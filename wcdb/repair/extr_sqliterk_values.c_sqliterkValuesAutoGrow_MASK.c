#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int count; int capacity; int /*<<< orphan*/ * values; } ;
typedef  TYPE_1__ sqliterk_values ;
typedef  int /*<<< orphan*/  sqliterk_value ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_NOMEM ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(sqliterk_values *values)
{
    if (!values) {
        return SQLITERK_MISUSE;
    }
    if (values->count >= values->capacity) {
        int oldCapacity = values->capacity;
        if (oldCapacity <= 0) {
            //init for 4
            values->capacity = 4;
        } else {
            values->capacity = oldCapacity * 2;
        }
        sqliterk_value *newValues =
            FUNC2(sizeof(sqliterk_value) * (values->capacity + 1));
        if (!newValues) {
            return SQLITERK_NOMEM;
        }
        if (values->values) {
            FUNC0(newValues, values->values,
                   sizeof(sqliterk_value) * oldCapacity);
            FUNC1(values->values);
        }
        values->values = newValues;
    }
    return SQLITERK_OK;
}