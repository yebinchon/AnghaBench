
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_column ;


 int sqliterkColumnGetValues (int *) ;
 double sqliterkValuesGetNumber (int ,int) ;

double sqliterk_column_number(sqliterk_column *column, int index)
{
    return sqliterkValuesGetNumber(sqliterkColumnGetValues(column), index);
}
