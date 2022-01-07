
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int in_dbus_queue; TYPE_1__* manager; struct TYPE_7__* installed; } ;
struct TYPE_6__ {int dbus_job_queue; } ;
typedef TYPE_2__ Job ;


 int LIST_PREPEND (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int dbus_queue ;

void job_add_to_dbus_queue(Job *j) {
        assert(j);
        assert(j->installed);

        if (j->in_dbus_queue)
                return;





        LIST_PREPEND(dbus_queue, j->manager->dbus_job_queue, j);
        j->in_dbus_queue = 1;
}
