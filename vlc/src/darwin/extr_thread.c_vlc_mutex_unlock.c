
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mutex_t ;


 int VLC_THREAD_ASSERT (char*) ;
 int pthread_mutex_unlock (int *) ;
 int vlc_mutex_unmark (int *) ;

void vlc_mutex_unlock (vlc_mutex_t *p_mutex)
{
    int val = pthread_mutex_unlock( p_mutex );
    VLC_THREAD_ASSERT ("unlocking mutex");
    vlc_mutex_unmark(p_mutex);
}
