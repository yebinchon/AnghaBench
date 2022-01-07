
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_column ;


 int sqliterkColumnGetValues (int *) ;
 void const* sqliterkValuesGetBinary (int ,int) ;

const void *sqliterk_column_binary(sqliterk_column *column, int index)
{
    return sqliterkValuesGetBinary(sqliterkColumnGetValues(column), index);
}
