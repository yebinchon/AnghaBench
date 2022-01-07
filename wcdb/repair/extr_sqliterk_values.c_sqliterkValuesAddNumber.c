
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t count; TYPE_3__* values; } ;
typedef TYPE_2__ sqliterk_values ;
struct TYPE_7__ {double* number; } ;
struct TYPE_9__ {TYPE_1__ any; int type; } ;
typedef TYPE_3__ sqliterk_value ;
typedef int sqliterk_number ;


 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 double* sqliterkOSMalloc (int) ;
 int sqliterkValueClear (TYPE_3__*) ;
 int sqliterkValuesAutoGrow (TYPE_2__*) ;
 int sqliterk_value_type_number ;

int sqliterkValuesAddNumber(sqliterk_values *values, double d)
{
    if (!values) {
        return SQLITERK_MISUSE;
    }
    int rc = sqliterkValuesAutoGrow(values);
    if (rc != SQLITERK_OK) {
        return rc;
    }
    sqliterk_value *value = &values->values[values->count];
    value->type = sqliterk_value_type_number;
    value->any.number = sqliterkOSMalloc(sizeof(sqliterk_number));
    if (!value->any.number) {
        rc = SQLITERK_NOMEM;
        goto sqliterkValuesAddNumber_Failed;
    }
    *value->any.number = d;
    values->count++;
    return SQLITERK_OK;

sqliterkValuesAddNumber_Failed:
    sqliterkValueClear(value);
    return rc;
}
