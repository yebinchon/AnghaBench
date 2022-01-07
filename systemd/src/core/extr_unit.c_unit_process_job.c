
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UnitNotifyFlags ;
typedef int UnitActiveState ;
struct TYPE_6__ {scalar_t__ state; int type; } ;
typedef int JobResult ;
typedef TYPE_1__ Job ;


 int FLAGS_SET (int,int ) ;
 int IN_SET (int ,int ,int ) ;
 int JOB_DONE ;
 int JOB_FAILED ;



 scalar_t__ JOB_RUNNING ;
 int JOB_SKIPPED ;





 scalar_t__ JOB_WAITING ;
 int UNIT_ACTIVATING ;
 int UNIT_ACTIVE ;
 int UNIT_DEACTIVATING ;
 int UNIT_FAILED ;
 int UNIT_IS_ACTIVE_OR_RELOADING (int ) ;
 int UNIT_IS_INACTIVE_OR_FAILED (int ) ;
 int UNIT_NOTIFY_RELOAD_FAILURE ;
 int UNIT_NOTIFY_SKIP_CONDITION ;
 int UNIT_RELOADING ;
 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int job_add_to_run_queue (TYPE_1__*) ;
 int job_finish_and_invalidate (TYPE_1__*,int ,int,int) ;

__attribute__((used)) static bool unit_process_job(Job *j, UnitActiveState ns, UnitNotifyFlags flags) {
        bool unexpected = 0;
        JobResult result;

        assert(j);

        if (j->state == JOB_WAITING)



                job_add_to_run_queue(j);




        switch (j->type) {

        case 132:
        case 128:

                if (UNIT_IS_ACTIVE_OR_RELOADING(ns))
                        job_finish_and_invalidate(j, JOB_DONE, 1, 0);
                else if (j->state == JOB_RUNNING && ns != UNIT_ACTIVATING) {
                        unexpected = 1;

                        if (UNIT_IS_INACTIVE_OR_FAILED(ns)) {
                                if (ns == UNIT_FAILED)
                                        result = JOB_FAILED;
                                else if (FLAGS_SET(flags, UNIT_NOTIFY_SKIP_CONDITION))
                                        result = JOB_SKIPPED;
                                else
                                        result = JOB_DONE;

                                job_finish_and_invalidate(j, result, 1, 0);
                        }
                }

                break;

        case 135:
        case 134:
        case 130:

                if (j->state == JOB_RUNNING) {
                        if (ns == UNIT_ACTIVE)
                                job_finish_and_invalidate(j, (flags & UNIT_NOTIFY_RELOAD_FAILURE) ? JOB_FAILED : JOB_DONE, 1, 0);
                        else if (!IN_SET(ns, UNIT_ACTIVATING, UNIT_RELOADING)) {
                                unexpected = 1;

                                if (UNIT_IS_INACTIVE_OR_FAILED(ns))
                                        job_finish_and_invalidate(j, ns == UNIT_FAILED ? JOB_FAILED : JOB_DONE, 1, 0);
                        }
                }

                break;

        case 131:
        case 133:
        case 129:

                if (UNIT_IS_INACTIVE_OR_FAILED(ns))
                        job_finish_and_invalidate(j, JOB_DONE, 1, 0);
                else if (j->state == JOB_RUNNING && ns != UNIT_DEACTIVATING) {
                        unexpected = 1;
                        job_finish_and_invalidate(j, JOB_FAILED, 1, 0);
                }

                break;

        default:
                assert_not_reached("Job type unknown");
        }

        return unexpected;
}
