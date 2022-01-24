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
 scalar_t__ ERANGE ; 
 long double HUGE_VAL ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 scalar_t__ OBJ_STRING ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (long double) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 long double FUNC6 (scalar_t__,char**) ; 

int FUNC7(robj *o, long double *target) {
    long double value;
    char *eptr;

    if (o == NULL) {
        value = 0;
    } else {
        FUNC4(NULL,o,o->type == OBJ_STRING);
        if (FUNC2(o)) {
            errno = 0;
            value = FUNC6(o->ptr, &eptr);
            if (FUNC3(o->ptr) == 0 ||
                FUNC1(((const char*)o->ptr)[0]) ||
                (size_t)(eptr-(char*)o->ptr) != FUNC3(o->ptr) ||
                (errno == ERANGE &&
                    (value == HUGE_VAL || value == -HUGE_VAL || value == 0)) ||
                FUNC0(value))
                return C_ERR;
        } else if (o->encoding == OBJ_ENCODING_INT) {
            value = (long)o->ptr;
        } else {
            FUNC5("Unknown string encoding");
        }
    }
    *target = value;
    return C_OK;
}