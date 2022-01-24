#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  description; int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ Varlink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static Varlink* FUNC4(Varlink *v) {
        if (!v)
                return NULL;

        /* If this is called the server object must already been unreffed here. Why that? because when we
         * linked up the varlink connection with the server object we took one ref in each direction */
        FUNC0(!v->server);

        FUNC3(v);

        FUNC1(v->description);
        return FUNC2(v);
}