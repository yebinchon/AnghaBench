
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int subi; } ;


 int init_rand48 () ;
 long jrand48 (int ) ;
 TYPE_1__ rand48 ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

long vlc_mrand48 (void)
{
    long ret;

    vlc_mutex_lock (&rand48.lock);
    init_rand48 ();
    ret = jrand48 (rand48.subi);
    vlc_mutex_unlock (&rand48.lock);
    return ret;
}
