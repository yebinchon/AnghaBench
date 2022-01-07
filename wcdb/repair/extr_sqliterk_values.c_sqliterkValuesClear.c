
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * values; } ;
typedef TYPE_1__ sqliterk_values ;
typedef int sqliterk_value ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkValueClear (int *) ;

int sqliterkValuesClear(sqliterk_values *values)
{
    if (!values) {
        return SQLITERK_MISUSE;
    }

    int i;
    for (i = 0; i < values->count; i++) {
        sqliterk_value *value = &values->values[i];
        sqliterkValueClear(value);
    }
    values->count = 0;
    return SQLITERK_OK;
}
