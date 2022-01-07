
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_column ;


 int sqliterkColumnGetValues (int *) ;
 int sqliterkValuesGetBytes (int ,int) ;

int sqliterk_column_bytes(sqliterk_column *column, int index)
{
    return sqliterkValuesGetBytes(sqliterkColumnGetValues(column), index);
}
