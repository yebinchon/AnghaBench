
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int installed; scalar_t__ unit; scalar_t__ type; int irreversible; int ignore_order; } ;
typedef TYPE_1__ Job ;


 scalar_t__ JOB_NOP ;
 int assert (int) ;
 int assert_se (int) ;
 scalar_t__ job_type_merge_and_collapse (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void job_merge_into_installed(Job *j, Job *other) {
        assert(j->installed);
        assert(j->unit == other->unit);

        if (j->type != JOB_NOP)
                assert_se(job_type_merge_and_collapse(&j->type, other->type, j->unit) == 0);
        else
                assert(other->type == JOB_NOP);

        j->irreversible = j->irreversible || other->irreversible;
        j->ignore_order = j->ignore_order || other->ignore_order;
}
