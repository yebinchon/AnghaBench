
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mutex_t ;


 int EBUSY ;
 int VLC_THREAD_ASSERT (char*) ;
 int pthread_mutex_trylock (int *) ;
 int vlc_mutex_mark (int *) ;

int vlc_mutex_trylock (vlc_mutex_t *p_mutex)
{
    int val = pthread_mutex_trylock( p_mutex );

    if (val != EBUSY) {
        VLC_THREAD_ASSERT ("locking mutex");
        vlc_mutex_mark(p_mutex);
    }
    return val;
}
