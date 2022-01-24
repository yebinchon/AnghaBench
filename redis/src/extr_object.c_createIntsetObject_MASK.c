#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  encoding; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  intset ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_ENCODING_INTSET ; 
 int /*<<< orphan*/  OBJ_SET ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

robj *FUNC2(void) {
    intset *is = FUNC1();
    robj *o = FUNC0(OBJ_SET,is);
    o->encoding = OBJ_ENCODING_INTSET;
    return o;
}