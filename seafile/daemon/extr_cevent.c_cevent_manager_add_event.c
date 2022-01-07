
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct CEvent {void* data; int id; } ;
struct TYPE_3__ {int mutex; int * pipefd; } ;
typedef TYPE_1__ CEventManager ;


 scalar_t__ CEVENT_SIZE ;
 int g_warning (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ seaf_pipe_writen (int ,char*,scalar_t__) ;

void
cevent_manager_add_event (CEventManager *manager, uint32_t id,
                          void *data)
{
    pthread_mutex_lock (&manager->mutex);

    struct CEvent cevent;
    char *buf = (char *) &cevent;

    cevent.id = id;
    cevent.data = data;
    if (seaf_pipe_writen(manager->pipefd[1], buf, CEVENT_SIZE) != CEVENT_SIZE) {
        g_warning ("add event error\n");
    }

    pthread_mutex_unlock (&manager->mutex);
}
