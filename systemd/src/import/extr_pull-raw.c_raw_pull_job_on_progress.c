
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* userdata; } ;
typedef TYPE_1__ RawPull ;
typedef TYPE_1__ PullJob ;


 int RAW_DOWNLOADING ;
 int assert (TYPE_1__*) ;
 int raw_pull_report_progress (TYPE_1__*,int ) ;

__attribute__((used)) static void raw_pull_job_on_progress(PullJob *j) {
        RawPull *i;

        assert(j);
        assert(j->userdata);

        i = j->userdata;

        raw_pull_report_progress(i, RAW_DOWNLOADING);
}
