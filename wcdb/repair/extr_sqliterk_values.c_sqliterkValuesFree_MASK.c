#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int count; scalar_t__ capacity; struct TYPE_6__* values; } ;
typedef  TYPE_1__ sqliterk_values ;
typedef  TYPE_1__ sqliterk_value ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(sqliterk_values *values)
{
    if (!values) {
        return SQLITERK_MISUSE;
    }

    int i;
    for (i = 0; i < values->count; i++) {
        sqliterk_value *value = &values->values[i];
        FUNC1(value);
    }
    values->count = 0;
    if (values->values) {
        FUNC0(values->values);
        values->values = NULL;
    }
    values->capacity = 0;
    FUNC0(values);
    return SQLITERK_OK;
}