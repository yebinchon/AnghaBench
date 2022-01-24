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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_4__ {size_t allocated; int /*<<< orphan*/ * set; } ;
typedef  TYPE_1__ CPUSet ;

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 

int FUNC4(CPUSet *cpu_set, unsigned ncpus) {
        size_t need;

        FUNC1(cpu_set);

        need = FUNC0(ncpus);
        if (need > cpu_set->allocated) {
                cpu_set_t *t;

                t = FUNC3(cpu_set->set, need);
                if (!t)
                        return -ENOMEM;

                FUNC2((uint8_t*) t + cpu_set->allocated, need - cpu_set->allocated);

                cpu_set->set = t;
                cpu_set->allocated = need;
        }

        return 0;
}