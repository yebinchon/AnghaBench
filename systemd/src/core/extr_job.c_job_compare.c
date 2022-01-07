
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UnitDependency ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ ignore_order; } ;
typedef TYPE_1__ Job ;


 int IN_SET (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ JOB_NOP ;
 scalar_t__ JOB_RESTART ;
 scalar_t__ JOB_STOP ;
 scalar_t__ UNIT_AFTER ;
 scalar_t__ UNIT_BEFORE ;
 scalar_t__ _JOB_TYPE_MAX_IN_TRANSACTION ;
 int assert (int) ;

int job_compare(Job *a, Job *b, UnitDependency assume_dep) {
        assert(a->type < _JOB_TYPE_MAX_IN_TRANSACTION);
        assert(b->type < _JOB_TYPE_MAX_IN_TRANSACTION);
        assert(IN_SET(assume_dep, UNIT_AFTER, UNIT_BEFORE));


        if (a->type == JOB_NOP || b->type == JOB_NOP)
                return 0;

        if (a->ignore_order || b->ignore_order)
                return 0;

        if (assume_dep == UNIT_AFTER)
                return -job_compare(b, a, UNIT_BEFORE);




        if (IN_SET(b->type, JOB_STOP, JOB_RESTART))
                return 1;
        else
                return -1;
}
