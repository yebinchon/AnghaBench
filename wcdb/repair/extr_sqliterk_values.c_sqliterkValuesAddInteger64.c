
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t count; TYPE_3__* values; } ;
typedef TYPE_2__ sqliterk_values ;
struct TYPE_7__ {int * integer; } ;
struct TYPE_9__ {TYPE_1__ any; int type; } ;
typedef TYPE_3__ sqliterk_value ;
typedef int sqliterk_integer ;
typedef int int64_t ;


 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 int * sqliterkOSMalloc (int) ;
 int sqliterkValueClear (TYPE_3__*) ;
 int sqliterkValuesAutoGrow (TYPE_2__*) ;
 int sqliterk_value_type_integer ;

int sqliterkValuesAddInteger64(sqliterk_values *values, int64_t i)
{
    if (!values) {
        return SQLITERK_MISUSE;
    }
    int rc = sqliterkValuesAutoGrow(values);
    if (rc != SQLITERK_OK) {
        return rc;
    }
    sqliterk_value *value = &values->values[values->count];
    value->type = sqliterk_value_type_integer;
    value->any.integer = sqliterkOSMalloc(sizeof(sqliterk_integer));
    if (!value->any.integer) {
        rc = SQLITERK_NOMEM;
        goto sqliterkValuesAddInteger64_Failed;
    }
    *value->any.integer = i;
    values->count++;
    return SQLITERK_OK;

sqliterkValuesAddInteger64_Failed:
    sqliterkValueClear(value);
    return rc;
}
