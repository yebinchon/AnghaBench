
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* userdata; } ;
typedef TYPE_1__ TarPull ;
typedef TYPE_1__ PullJob ;


 int TAR_DOWNLOADING ;
 int assert (TYPE_1__*) ;
 int tar_pull_report_progress (TYPE_1__*,int ) ;

__attribute__((used)) static void tar_pull_job_on_progress(PullJob *j) {
        TarPull *i;

        assert(j);
        assert(j->userdata);

        i = j->userdata;

        tar_pull_report_progress(i, TAR_DOWNLOADING);
}
