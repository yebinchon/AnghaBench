#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  jobs; } ;
struct TYPE_10__ {TYPE_1__* job; TYPE_1__* nop_job; } ;
struct TYPE_9__ {int installed; scalar_t__ type; int /*<<< orphan*/  id; TYPE_8__* manager; TYPE_2__* unit; } ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 scalar_t__ JOB_NOP ; 
 int /*<<< orphan*/  JOB_WAITING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8(Job *j) {
        Job **pj;

        FUNC2(j->installed);

        FUNC5(j, JOB_WAITING);

        pj = (j->type == JOB_NOP) ? &j->unit->nop_job : &j->unit->job;
        FUNC2(*pj == j);

        /* Detach from next 'bigger' objects */

        /* daemon-reload should be transparent to job observers */
        if (!FUNC0(j->manager))
                FUNC3(j);

        *pj = NULL;

        FUNC7(j->unit);

        FUNC6(j->unit); /* The Job property of the unit has changed now */

        FUNC4(j->manager->jobs, FUNC1(j->id), j);
        j->installed = false;
}