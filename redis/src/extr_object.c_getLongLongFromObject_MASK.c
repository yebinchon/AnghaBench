#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 scalar_t__ OBJ_STRING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,long long*) ; 

int FUNC5(robj *o, long long *target) {
    long long value;

    if (o == NULL) {
        value = 0;
    } else {
        FUNC2(NULL,o,o->type == OBJ_STRING);
        if (FUNC0(o)) {
            if (FUNC4(o->ptr,FUNC1(o->ptr),&value) == 0) return C_ERR;
        } else if (o->encoding == OBJ_ENCODING_INT) {
            value = (long)o->ptr;
        } else {
            FUNC3("Unknown string encoding");
        }
    }
    if (target) *target = value;
    return C_OK;
}