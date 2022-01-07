
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const vlc_mutex_t ;
typedef int locks ;


 int VLC_MAX_MUTEX ;

 int assert (int) ;
 int static_assert (int,char*) ;
 int vlc_mutex_lock (int const*) ;
 int vlc_mutex_unlock (int const*) ;

void vlc_global_mutex (unsigned n, bool acquire)
{
    static vlc_mutex_t locks[] = {
        128,
        128,
        128,
        128,



    };
    static_assert (VLC_MAX_MUTEX == (sizeof (locks) / sizeof (locks[0])),
                   "Wrong number of global mutexes");
    assert (n < (sizeof (locks) / sizeof (locks[0])));

    vlc_mutex_t *lock = locks + n;
    if (acquire)
        vlc_mutex_lock (lock);
    else
        vlc_mutex_unlock (lock);
}
