
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitActiveState ;
typedef int Unit ;
typedef int JobType ;


 int JOB_NOP ;
 int JOB_RELOAD ;

 int JOB_RESTART ;
 int JOB_START ;


 int UNIT_IS_ACTIVE_OR_RELOADING (int ) ;
 int unit_active_state (int *) ;

JobType job_type_collapse(JobType t, Unit *u) {
        UnitActiveState s;

        switch (t) {

        case 128:
                s = unit_active_state(u);
                if (!UNIT_IS_ACTIVE_OR_RELOADING(s))
                        return JOB_NOP;

                return JOB_RESTART;

        case 129:
                s = unit_active_state(u);
                if (!UNIT_IS_ACTIVE_OR_RELOADING(s))
                        return JOB_NOP;

                return JOB_RELOAD;

        case 130:
                s = unit_active_state(u);
                if (!UNIT_IS_ACTIVE_OR_RELOADING(s))
                        return JOB_START;

                return JOB_RELOAD;

        default:
                return t;
        }
}
