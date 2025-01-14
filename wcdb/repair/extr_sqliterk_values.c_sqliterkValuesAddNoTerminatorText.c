
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t count; TYPE_4__* values; } ;
typedef TYPE_3__ sqliterk_values ;
struct TYPE_9__ {TYPE_1__* text; } ;
struct TYPE_11__ {TYPE_2__ any; int type; } ;
typedef TYPE_4__ sqliterk_value ;
typedef int sqliterk_text ;
struct TYPE_8__ {int s; char* t; } ;


 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 int memcpy (char*,char const*,int const) ;
 void* sqliterkOSMalloc (int) ;
 int sqliterkValueClear (TYPE_4__*) ;
 int sqliterkValuesAutoGrow (TYPE_3__*) ;
 int sqliterk_value_type_text ;

int sqliterkValuesAddNoTerminatorText(sqliterk_values *values,
                                      const char *t,
                                      const int s)
{
    if (!values || !t) {
        return SQLITERK_MISUSE;
    }
    int rc = sqliterkValuesAutoGrow(values);
    if (rc != SQLITERK_OK) {
        return rc;
    }
    sqliterk_value *value = &values->values[values->count];
    value->type = sqliterk_value_type_text;
    value->any.text = sqliterkOSMalloc(sizeof(sqliterk_text));
    if (!value->any.text) {
        rc = SQLITERK_NOMEM;
        goto sqliterkValuesAddNoTerminatorText_Failed;
    }
    value->any.text->s = s;
    value->any.text->t = sqliterkOSMalloc(sizeof(char) * (s + 1));
    if (!value->any.text->t) {
        rc = SQLITERK_NOMEM;
        goto sqliterkValuesAddNoTerminatorText_Failed;
    }
    memcpy(value->any.text->t, t, s);
    value->any.text->t[s] = '\0';
    values->count++;
    return SQLITERK_OK;

sqliterkValuesAddNoTerminatorText_Failed:
    sqliterkValueClear(value);
    return rc;
}
