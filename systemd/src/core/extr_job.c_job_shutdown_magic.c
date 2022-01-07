
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int no_console_output; } ;
struct TYPE_7__ {TYPE_5__* manager; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__* unit; } ;
typedef TYPE_1__ Job ;


 scalar_t__ JOB_START ;
 int MANAGER_IS_SYSTEM (TYPE_5__*) ;
 int SPECIAL_SHUTDOWN_TARGET ;
 int assert (TYPE_1__*) ;
 int asynchronous_sync (int *) ;
 scalar_t__ detect_container () ;
 int unit_has_name (TYPE_2__*,int ) ;

void job_shutdown_magic(Job *j) {
        assert(j);
        if (j->type != JOB_START)
                return;

        if (!MANAGER_IS_SYSTEM(j->unit->manager))
                return;

        if (!unit_has_name(j->unit, SPECIAL_SHUTDOWN_TARGET))
                return;


        j->unit->manager->no_console_output = 0;

        if (detect_container() > 0)
                return;

        (void) asynchronous_sync(((void*)0));
}
