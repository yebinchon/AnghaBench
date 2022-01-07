
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ev_base; } ;
struct TYPE_5__ {int event; int * pipefd; } ;
typedef TYPE_1__ CEventManager ;


 int EV_PERSIST ;
 int EV_READ ;
 int errno ;
 int event_add (int ,int *) ;
 int event_new (int ,int ,int,int ,TYPE_1__*) ;
 int g_warning (char*,int ) ;
 int pipe_callback ;
 TYPE_2__* seaf ;
 scalar_t__ seaf_pipe (int *) ;
 int strerror (int ) ;

int cevent_manager_start (CEventManager *manager)
{
    if (seaf_pipe(manager->pipefd) < 0) {
        g_warning ("pipe error: %s\n", strerror(errno));
        return -1;
    }

    manager->event = event_new (seaf->ev_base, manager->pipefd[0],
               EV_READ | EV_PERSIST, pipe_callback, manager);
    event_add (manager->event, ((void*)0));

    return 0;
}
