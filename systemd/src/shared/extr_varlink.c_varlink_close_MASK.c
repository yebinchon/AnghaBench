#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ state; } ;
typedef  TYPE_1__ Varlink ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ VARLINK_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(Varlink *v) {

        FUNC0(v, -EINVAL);

        if (v->state == VARLINK_DISCONNECTED)
                return 0;

        FUNC4(v, VARLINK_DISCONNECTED);

        /* Let's take a reference first, since varlink_detach_server() might drop the final (dangling) ref
         * which would destroy us before we can call varlink_clear() */
        FUNC3(v);
        FUNC2(v);
        FUNC1(v);
        FUNC5(v);

        return 1;
}