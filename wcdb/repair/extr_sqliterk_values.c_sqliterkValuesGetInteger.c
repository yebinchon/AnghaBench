
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_values ;


 scalar_t__ sqliterkValuesGetInteger64 (int *,int) ;

int sqliterkValuesGetInteger(sqliterk_values *values, int index)
{
    return (int) sqliterkValuesGetInteger64(values, index);
}
