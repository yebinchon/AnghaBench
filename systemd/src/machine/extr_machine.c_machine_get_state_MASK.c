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
struct TYPE_4__ {scalar_t__ class; scalar_t__ scope_job; scalar_t__ stopping; } ;
typedef  int /*<<< orphan*/  MachineState ;
typedef  TYPE_1__ Machine ;

/* Variables and functions */
 int /*<<< orphan*/  MACHINE_CLOSING ; 
 scalar_t__ MACHINE_HOST ; 
 int /*<<< orphan*/  MACHINE_OPENING ; 
 int /*<<< orphan*/  MACHINE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

MachineState FUNC1(Machine *s) {
        FUNC0(s);

        if (s->class == MACHINE_HOST)
                return MACHINE_RUNNING;

        if (s->stopping)
                return MACHINE_CLOSING;

        if (s->scope_job)
                return MACHINE_OPENING;

        return MACHINE_RUNNING;
}