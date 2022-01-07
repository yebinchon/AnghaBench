
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t count; TYPE_3__* values; } ;
typedef TYPE_2__ sqliterk_values ;
struct TYPE_6__ {int * memory; } ;
struct TYPE_8__ {TYPE_1__ any; int type; } ;
typedef TYPE_3__ sqliterk_value ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkValuesAutoGrow (TYPE_2__*) ;
 int sqliterk_value_type_null ;

int sqliterkValuesAddNull(sqliterk_values *values)
{
    if (!values) {
        return SQLITERK_MISUSE;
    }
    int rc = sqliterkValuesAutoGrow(values);
    if (rc != SQLITERK_OK) {
        return rc;
    }
    sqliterk_value *value = &values->values[values->count];
    value->type = sqliterk_value_type_null;
    value->any.memory = ((void*)0);
    values->count++;
    return SQLITERK_OK;
}
