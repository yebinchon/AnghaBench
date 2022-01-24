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
typedef  int uint64_t ;
struct siphash {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__ const* interface; struct TYPE_5__ const* name; struct TYPE_5__ const* type; } ;
typedef  TYPE_1__ Member ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,struct siphash*) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct siphash*) ; 

__attribute__((used)) static void FUNC3(const Member *m, struct siphash *state) {
        uint64_t arity = 1;

        FUNC0(m);
        FUNC0(m->type);

        FUNC1(m->type, state);

        arity += !!m->name + !!m->interface;

        FUNC2(&arity, state);

        if (m->name)
                FUNC1(m->name, state);

        if (m->interface)
                FUNC1(m->interface, state);
}