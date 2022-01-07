
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int q_lock; scalar_t__ event_q; } ;
typedef TYPE_1__ WTStatus ;


 int free_event_cb ;
 int g_free (TYPE_1__*) ;
 int g_queue_foreach (scalar_t__,int ,int *) ;
 int g_queue_free (scalar_t__) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void free_wt_status (WTStatus *status)
{
    if (status->event_q) {
        g_queue_foreach (status->event_q, free_event_cb, ((void*)0));
        g_queue_free (status->event_q);
    }
    pthread_mutex_destroy (&status->q_lock);
    g_free (status);
}
