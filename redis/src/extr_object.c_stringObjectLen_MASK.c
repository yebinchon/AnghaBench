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
struct TYPE_5__ {scalar_t__ type; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 scalar_t__ OBJ_STRING ; 
 size_t FUNC0 (long) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

size_t FUNC4(robj *o) {
    FUNC3(NULL,o,o->type == OBJ_STRING);
    if (FUNC1(o)) {
        return FUNC2(o->ptr);
    } else {
        return FUNC0((long)o->ptr);
    }
}