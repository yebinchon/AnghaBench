
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;


 int EOVERFLOW ;
 int VLC_THREAD_ASSERT (char*) ;
 int errno ;
 scalar_t__ likely (int) ;
 scalar_t__ sem_post (int *) ;
 scalar_t__ unlikely (int) ;

int vlc_sem_post (vlc_sem_t *sem)
{
    int val;

    if (likely(sem_post (sem) == 0))
        return 0;

    val = errno;

    if (unlikely(val != EOVERFLOW))
        VLC_THREAD_ASSERT ("unlocking semaphore");
    return val;
}
