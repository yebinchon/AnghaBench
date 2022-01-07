
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;


 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 int VLC_THREAD_ASSERT (char*) ;
 scalar_t__ likely (int) ;
 scalar_t__ semaphore_wait (int ) ;

void vlc_sem_wait (vlc_sem_t *sem)
{
    int val;

    if (likely(semaphore_wait(*sem) == KERN_SUCCESS))
        return;

    val = EINVAL;

    VLC_THREAD_ASSERT ("locking semaphore");
}
