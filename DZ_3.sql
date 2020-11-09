# 1. Сделать запрос, в котором мы выберем все данные о городе – регион, страна. 
SELECT _cities.title_en, _countries.title_en, _regions.title_en FROM _cities
 join _countries on _cities.country_id = _countries.id
 join _regions on _cities.region_id = _regions.region_id;
 #2. Выбрать все города из Московской области.
 SELECT _cities.title_en, _regions.title_en FROM _cities
 join _regions on _regions.title_en = 'Московская область';
 