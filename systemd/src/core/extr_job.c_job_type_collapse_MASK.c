#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UnitActiveState ;
typedef  int /*<<< orphan*/  Unit ;
typedef  int JobType ;

/* Variables and functions */
 int JOB_NOP ; 
 int JOB_RELOAD ; 
#define  JOB_RELOAD_OR_START 130 
 int JOB_RESTART ; 
 int JOB_START ; 
#define  JOB_TRY_RELOAD 129 
#define  JOB_TRY_RESTART 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

JobType FUNC2(JobType t, Unit *u) {
        UnitActiveState s;

        switch (t) {

        case JOB_TRY_RESTART:
                s = FUNC1(u);
                if (!FUNC0(s))
                        return JOB_NOP;

                return JOB_RESTART;

        case JOB_TRY_RELOAD:
                s = FUNC1(u);
                if (!FUNC0(s))
                        return JOB_NOP;

                return JOB_RELOAD;

        case JOB_RELOAD_OR_START:
                s = FUNC1(u);
                if (!FUNC0(s))
                        return JOB_START;

                return JOB_RELOAD;

        default:
                return t;
        }
}