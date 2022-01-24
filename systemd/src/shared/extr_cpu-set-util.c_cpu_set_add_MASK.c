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
struct TYPE_4__ {int /*<<< orphan*/  set; int /*<<< orphan*/  allocated; } ;
typedef  TYPE_1__ CPUSet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ERANGE ; 
 int FUNC1 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static int FUNC2(CPUSet *cpu_set, unsigned cpu) {
        int r;

        if (cpu >= 8192)
                /* As of kernel 5.1, CONFIG_NR_CPUS can be set to 8192 on PowerPC */
                return -ERANGE;

        r = FUNC1(cpu_set, cpu + 1);
        if (r < 0)
                return r;

        FUNC0(cpu, cpu_set->allocated, cpu_set->set);
        return 0;
}