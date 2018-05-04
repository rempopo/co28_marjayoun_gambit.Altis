//Artillery will fall in a line between the two points Artillery1 and Artillery2, with some random offset.

stopFiring = false;

_pos1 = getMarkerPos "Artillery1";
_pos2 = getMarkerPos "Artillery2";

_slp = ((_pos2 select 1) - (_pos1 select 1)) / ((_pos2 select 0) - (_pos1 select 0));
_int = (_pos1 select 1) - (_slp * (_pos1 select 0));

_xDist = (_pos2 select 0) - (_pos1 select 0);
_invert = 1; //Initializes variable - may then be flipped to -1 for the bombing code to go the right way.

if (_xDist < 0) then {
	_xDist = abs(_xDist);
	_invert = -1;
};

_precision = 50; //All artillery will fall within 70m of the line.

//Artillery will fall on the target area from the moment that this script is invoked until the global variable "stopFiring" is true.
while {!stopFiring} do {
	_XTarget = _invert * (random _xDist) + (_pos1 select 0);
	_YTarget = _slp * _XTarget + _int;
	
	_XTarget = _XTarget + (random (2 * _precision)) - _precision;
	_YTarget = _YTarget + (random (2 * _precision)) - _precision;
	
	_strikePos = [_XTarget, _YTarget, 0];
	_strike = "R_60mm_HE" createVehicle _strikePos;
	sleep 20;
};