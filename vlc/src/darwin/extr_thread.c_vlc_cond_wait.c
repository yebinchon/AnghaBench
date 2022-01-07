
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mutex_t ;
typedef int vlc_cond_t ;


 int VLC_THREAD_ASSERT (char*) ;
 int pthread_cond_wait (int *,int *) ;

void vlc_cond_wait (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex)
{
    int val = pthread_cond_wait (p_condvar, p_mutex);
    VLC_THREAD_ASSERT ("waiting on condition");
}
