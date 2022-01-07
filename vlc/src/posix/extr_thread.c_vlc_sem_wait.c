
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;


 int EINTR ;
 int VLC_THREAD_ASSERT (char*) ;
 int errno ;
 scalar_t__ likely (int) ;
 scalar_t__ sem_wait (int *) ;

void vlc_sem_wait (vlc_sem_t *sem)
{
    int val;

    do
        if (likely(sem_wait (sem) == 0))
            return;
    while ((val = errno) == EINTR);

    VLC_THREAD_ASSERT ("locking semaphore");
}
