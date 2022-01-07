
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int progress_percent; int error; int (* on_finished ) (TYPE_1__*) ;int state; int url; } ;
typedef TYPE_1__ PullJob ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int PULL_JOB_DONE ;
 int PULL_JOB_FAILED ;
 int assert (TYPE_1__*) ;
 int log_info (char*,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void pull_job_finish(PullJob *j, int ret) {
        assert(j);

        if (IN_SET(j->state, PULL_JOB_DONE, PULL_JOB_FAILED))
                return;

        if (ret == 0) {
                j->state = PULL_JOB_DONE;
                j->progress_percent = 100;
                log_info("Download of %s complete.", j->url);
        } else {
                j->state = PULL_JOB_FAILED;
                j->error = ret;
        }

        if (j->on_finished)
                j->on_finished(j);
}
