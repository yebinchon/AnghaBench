
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;


 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 int VLC_THREAD_ASSERT (char*) ;
 scalar_t__ likely (int) ;
 int mach_task_self () ;
 scalar_t__ semaphore_destroy (int ,int ) ;

void vlc_sem_destroy (vlc_sem_t *sem)
{
    int val;

    if (likely(semaphore_destroy(mach_task_self(), *sem) == KERN_SUCCESS))
        return;

    val = EINVAL;

    VLC_THREAD_ASSERT ("destroying semaphore");
}
