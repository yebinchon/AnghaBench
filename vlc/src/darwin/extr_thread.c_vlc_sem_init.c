
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;


 scalar_t__ KERN_SUCCESS ;
 int SYNC_POLICY_FIFO ;
 int abort () ;
 int mach_task_self () ;
 scalar_t__ semaphore_create (int ,int *,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

void vlc_sem_init (vlc_sem_t *sem, unsigned value)
{
    if (unlikely(semaphore_create(mach_task_self(), sem, SYNC_POLICY_FIFO, value) != KERN_SUCCESS))
        abort ();
}
