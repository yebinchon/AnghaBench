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
struct TYPE_4__ {int installed; scalar_t__ unit; scalar_t__ type; int irreversible; int ignore_order; } ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 scalar_t__ JOB_NOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(Job *j, Job *other) {
        FUNC0(j->installed);
        FUNC0(j->unit == other->unit);

        if (j->type != JOB_NOP)
                FUNC1(FUNC2(&j->type, other->type, j->unit) == 0);
        else
                FUNC0(other->type == JOB_NOP);

        j->irreversible = j->irreversible || other->irreversible;
        j->ignore_order = j->ignore_order || other->ignore_order;
}