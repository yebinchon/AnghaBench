
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mutex_t ;


 int VLC_THREAD_ASSERT (char*) ;
 int pthread_mutex_lock (int *) ;
 int vlc_mutex_mark (int *) ;

void vlc_mutex_lock (vlc_mutex_t *p_mutex)
{
    int val = pthread_mutex_lock( p_mutex );
    VLC_THREAD_ASSERT ("locking mutex");
    vlc_mutex_mark(p_mutex);
}
