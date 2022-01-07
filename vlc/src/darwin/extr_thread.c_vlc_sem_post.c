
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;


 int EINVAL ;
 int EOVERFLOW ;
 scalar_t__ KERN_SUCCESS ;
 int VLC_THREAD_ASSERT (char*) ;
 scalar_t__ likely (int) ;
 scalar_t__ semaphore_signal (int ) ;
 scalar_t__ unlikely (int) ;

int vlc_sem_post (vlc_sem_t *sem)
{
    int val;

    if (likely(semaphore_signal(*sem) == KERN_SUCCESS))
        return 0;

    val = EINVAL;

    if (unlikely(val != EOVERFLOW))
        VLC_THREAD_ASSERT ("unlocking semaphore");
    return val;
}
