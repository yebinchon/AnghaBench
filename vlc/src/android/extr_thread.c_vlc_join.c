
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vlc_thread_t ;
struct TYPE_4__ {int thread; int finished; } ;


 int VLC_THREAD_ASSERT (char*) ;
 int clean_detached_thread (TYPE_1__*) ;
 int pthread_join (int ,void**) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_wait (int *) ;

void vlc_join (vlc_thread_t handle, void **result)
{
    vlc_sem_wait (&handle->finished);
    vlc_sem_destroy (&handle->finished);

    int val = pthread_join (handle->thread, result);
    VLC_THREAD_ASSERT ("joining thread");
    clean_detached_thread(handle);
}
