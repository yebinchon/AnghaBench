
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int count; scalar_t__ capacity; struct TYPE_6__* values; } ;
typedef TYPE_1__ sqliterk_values ;
typedef TYPE_1__ sqliterk_value ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkOSFree (TYPE_1__*) ;
 int sqliterkValueClear (TYPE_1__*) ;

int sqliterkValuesFree(sqliterk_values *values)
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
    if (values->values) {
        sqliterkOSFree(values->values);
        values->values = ((void*)0);
    }
    values->capacity = 0;
    sqliterkOSFree(values);
    return SQLITERK_OK;
}
