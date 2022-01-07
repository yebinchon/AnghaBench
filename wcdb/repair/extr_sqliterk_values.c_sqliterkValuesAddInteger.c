
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_values ;


 int sqliterkValuesAddInteger64 (int *,int) ;

int sqliterkValuesAddInteger(sqliterk_values *values, int i)
{
    return sqliterkValuesAddInteger64(values, i);
}
