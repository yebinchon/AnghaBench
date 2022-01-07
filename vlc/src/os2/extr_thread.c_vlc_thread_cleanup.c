
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vlc_threadvar_t ;
struct vlc_thread {int cancel_sock; int done_event; int cancel_event; scalar_t__ detached; } ;
struct TYPE_5__ {int (* destroy ) (void*) ;struct TYPE_5__* prev; } ;


 int DosCloseEventSem (int ) ;
 int free (struct vlc_thread*) ;
 int soclose (int ) ;
 int stub1 (void*) ;
 int super_mutex ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 void* vlc_threadvar_get (TYPE_1__*) ;
 TYPE_1__* vlc_threadvar_last ;
 int vlc_threadvar_set (TYPE_1__*,int *) ;

__attribute__((used)) static void vlc_thread_cleanup (struct vlc_thread *th)
{
    vlc_threadvar_t key;

retry:

    vlc_mutex_lock (&super_mutex);
    for (key = vlc_threadvar_last; key != ((void*)0); key = key->prev)
    {
        void *value = vlc_threadvar_get (key);
        if (value != ((void*)0) && key->destroy != ((void*)0))
        {
            vlc_mutex_unlock (&super_mutex);
            vlc_threadvar_set (key, ((void*)0));
            key->destroy (value);
            goto retry;
        }
    }
    vlc_mutex_unlock (&super_mutex);

    if (th->detached)
    {
        DosCloseEventSem (th->cancel_event);
        DosCloseEventSem (th->done_event );

        soclose (th->cancel_sock);

        free (th);
    }
}
