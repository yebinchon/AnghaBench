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
struct TYPE_3__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char) ; 
 unsigned long FUNC2 (scalar_t__,char**,int) ; 

int FUNC3(client *c, robj *o, unsigned long *cursor) {
    char *eptr;

    /* Use strtoul() because we need an *unsigned* long, so
     * getLongLongFromObject() does not cover the whole cursor space. */
    errno = 0;
    *cursor = FUNC2(o->ptr, &eptr, 10);
    if (FUNC1(((char*)o->ptr)[0]) || eptr[0] != '\0' || errno == ERANGE)
    {
        FUNC0(c, "invalid cursor");
        return C_ERR;
    }
    return C_OK;
}