
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;


 int VLC_THREAD_ASSERT (char*) ;
 int errno ;
 scalar_t__ likely (int) ;
 scalar_t__ sem_destroy (int *) ;

void vlc_sem_destroy (vlc_sem_t *sem)
{
    int val;

    if (likely(sem_destroy (sem) == 0))
        return;

    val = errno;

    VLC_THREAD_ASSERT ("destroying semaphore");
}
