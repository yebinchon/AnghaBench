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
struct TYPE_9__ {TYPE_1__* binary; } ;
struct TYPE_11__ {TYPE_2__ any; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ sqliterk_value ;
typedef  int /*<<< orphan*/  sqliterk_binary ;
struct TYPE_8__ {int s; void* b; } ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_NOMEM ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/  FUNC0 (void*,void const*,int const) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  sqliterk_value_type_binary ; 

int FUNC4(sqliterk_values *values, const void *b, const int s)
{
    if (!values || !b) {
        return SQLITERK_MISUSE;
    }
    int rc = FUNC3(values);
    if (rc != SQLITERK_OK) {
        return rc;
    }
    sqliterk_value *value = &values->values[values->count];
    value->type = sqliterk_value_type_binary;
    value->any.binary = FUNC1(sizeof(sqliterk_binary));
    if (!value->any.binary) {
        rc = SQLITERK_NOMEM;
        goto sqliterkValuesAddBinary_Failed;
    }
    value->any.binary->s = s;
    value->any.binary->b = FUNC1(sizeof(void *) * s);
    if (!value->any.binary->b) {
        return SQLITERK_NOMEM;
    }
    FUNC0(value->any.binary->b, b, s);
    values->count++;
    return SQLITERK_OK;

sqliterkValuesAddBinary_Failed:
    FUNC2(value);
    return rc;
}