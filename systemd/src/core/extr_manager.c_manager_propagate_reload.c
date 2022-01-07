
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int sd_bus_error ;
typedef int Unit ;
struct TYPE_8__ {int anchor_job; } ;
typedef TYPE_1__ Transaction ;
typedef int Manager ;
typedef int JobMode ;


 int ENOMEM ;
 int JOB_IGNORE_DEPENDENCIES ;
 int JOB_ISOLATE ;
 int JOB_NOP ;
 int JOB_REPLACE_IRREVERSIBLY ;
 int _JOB_MODE_MAX ;
 int assert (int) ;
 int transaction_abort (TYPE_1__*) ;
 int transaction_activate (TYPE_1__*,int *,int ,int *,int *) ;
 int transaction_add_job_and_dependencies (TYPE_1__*,int ,int *,int *,int,int,int,int,int *) ;
 int transaction_add_propagate_reload_jobs (TYPE_1__*,int *,int ,int,int *) ;
 int transaction_free (TYPE_1__*) ;
 TYPE_1__* transaction_new (int) ;

int manager_propagate_reload(Manager *m, Unit *unit, JobMode mode, sd_bus_error *e) {
        int r;
        Transaction *tr;

        assert(m);
        assert(unit);
        assert(mode < _JOB_MODE_MAX);
        assert(mode != JOB_ISOLATE);

        tr = transaction_new(mode == JOB_REPLACE_IRREVERSIBLY);
        if (!tr)
                return -ENOMEM;


        r = transaction_add_job_and_dependencies(tr, JOB_NOP, unit, ((void*)0), 0, 0, 1, 1, e);
        if (r < 0)
                goto tr_abort;


        transaction_add_propagate_reload_jobs(tr, unit, tr->anchor_job, mode == JOB_IGNORE_DEPENDENCIES, e);

        r = transaction_activate(tr, m, mode, ((void*)0), e);
        if (r < 0)
                goto tr_abort;

        transaction_free(tr);
        return 0;

tr_abort:
        transaction_abort(tr);
        transaction_free(tr);
        return r;
}
