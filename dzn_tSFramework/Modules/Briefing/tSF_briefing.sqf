//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"6 июля 2006 г. вооруженная группировка Hezbollah нанесла несколько ракетных ударов по территории Израиля, а также захватила несколько несколько пограничников на границе с Ливаном, у нас есть основания полагать, что их перевезли вглубь Ливана и удерживают в городе Marjayoun, на окраинах которого находится опорный пункт Hezbollah.
<br />Мы не можем позволить террористам безнаказанно угрожать безопасности нашей священной земли, поэтому уже через неделю, 13 июля IDF начала полномасштабное вторжение на территорию южного Ливана.
<br />    Наша артиллерия наносит удары по городам-спутникам Marjayoun и почти полностью уничтожила захваченный боевиками город Syrta, где было замечено крупное скопление сил противника, и переключилась на город Abdera, так что нам не смогут оказать серьезное сопротивление на подступах к городу."
END

TOPIC("А. Враждебные силы:")
"Нерегулярные силы - Вооруженная группировка Hezbollah
<br />    Численность
<br />         2 взвода"
END

TOPIC("Б. Дружественные силы:")
"Регулярные силы - Israeli Defence Forces
<br />    1'1 - 9 чел.
<br />    1'2 - 9 чел.
<br />    1'3 - 9 чел.
<br />    1'6 - 4 чел.
<br /> 
<br />    Crew 1 - 2 чел.
<br />    Crew 2 - 2 чел.
<br />    Crew 3 - 2 чел.
<br />"
END

TOPIC("II. Задание:")
"1. Спасти захваченных пограничников и доставить их на Point of Departure
<br />2. Вернуться на базу
<br />
<br />Дополнительно: Захватить опорный пункт на горе на N-W от Marjayoun
<br />"
END

TOPIC("III. Выполнение:")
"По плану командира.
<br /> 
<br /> Рекоммендуется проходить через разбитый город Syrta"
END

TOPIC("IV. Поддержка:")
"3 APC Namer (combi ags + m2)
<br />1 m113 (unarmed)
<br />
<br />Artillery support"
END

TOPIC("V. Сигналы:")
"PL NET 50
<br />     1'1 - SR CH 1
<br />     1'2 - SR CH 2
<br />     1'3 - SR CH 3
<br />     1'6 - SR CH 6"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

ADD_TOPICS