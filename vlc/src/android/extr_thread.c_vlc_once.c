
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_once_t ;


 int VLC_THREAD_ASSERT (char*) ;
 int pthread_once (int *,void (*) ()) ;

void vlc_once(vlc_once_t *once, void (*cb)(void))
{
    int val = pthread_once(once, cb);
    VLC_THREAD_ASSERT("initializing once");
}
