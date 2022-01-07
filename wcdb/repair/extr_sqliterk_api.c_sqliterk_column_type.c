
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_value_type ;
typedef int sqliterk_column ;


 int sqliterkColumnGetValues (int *) ;
 int sqliterkValuesGetType (int ,int) ;

sqliterk_value_type sqliterk_column_type(sqliterk_column *column, int index)
{
    return sqliterkValuesGetType(sqliterkColumnGetValues(column), index);
}
