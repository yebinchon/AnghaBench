#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t count; TYPE_4__* values; } ;
typedef  TYPE_3__ sqliterk_values ;
struct TYPE_9__ {TYPE_1__* text; } ;
struct TYPE_11__ {TYPE_2__ any; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ sqliterk_value ;
typedef  int /*<<< orphan*/  sqliterk_text ;
struct TYPE_8__ {int s; char* t; } ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_NOMEM ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int const) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  sqliterk_value_type_text ; 

int FUNC4(sqliterk_values *values,
                                      const char *t,
                                      const int s)
{
    if (!values || !t) {
        return SQLITERK_MISUSE;
    }
    int rc = FUNC3(values);
    if (rc != SQLITERK_OK) {
        return rc;
    }
    sqliterk_value *value = &values->values[values->count];
    value->type = sqliterk_value_type_text;
    value->any.text = FUNC1(sizeof(sqliterk_text));
    if (!value->any.text) {
        rc = SQLITERK_NOMEM;
        goto sqliterkValuesAddNoTerminatorText_Failed;
    }
    value->any.text->s = s;
    value->any.text->t = FUNC1(sizeof(char) * (s + 1));
    if (!value->any.text->t) {
        rc = SQLITERK_NOMEM;
        goto sqliterkValuesAddNoTerminatorText_Failed;
    }
    FUNC0(value->any.text->t, t, s);
    value->any.text->t[s] = '\0';
    values->count++;
    return SQLITERK_OK;

sqliterkValuesAddNoTerminatorText_Failed:
    FUNC2(value);
    return rc;
}