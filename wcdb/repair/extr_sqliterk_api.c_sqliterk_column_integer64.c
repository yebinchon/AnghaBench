
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_column ;
typedef int int64_t ;


 int sqliterkColumnGetValues (int *) ;
 int sqliterkValuesGetInteger64 (int ,int) ;

int64_t sqliterk_column_integer64(sqliterk_column *column, int index)
{
    return sqliterkValuesGetInteger64(sqliterkColumnGetValues(column), index);
}
