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
struct TYPE_6__ {int refcount; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_LAZY_FREE ; 
 size_t LAZYFREE_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  lazyfree_objects ; 

void FUNC4(robj *o) {
    size_t free_effort = FUNC3(o);
    if (free_effort > LAZYFREE_THRESHOLD && o->refcount == 1) {
        FUNC0(lazyfree_objects,1);
        FUNC1(BIO_LAZY_FREE,o,NULL,NULL);
    } else {
        FUNC2(o);
    }
}