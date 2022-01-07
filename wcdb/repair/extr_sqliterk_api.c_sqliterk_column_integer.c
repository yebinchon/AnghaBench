
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_column ;


 int sqliterkColumnGetValues (int *) ;
 int sqliterkValuesGetInteger (int ,int) ;

int sqliterk_column_integer(sqliterk_column *column, int index)
{
    return sqliterkValuesGetInteger(sqliterkColumnGetValues(column), index);
}
