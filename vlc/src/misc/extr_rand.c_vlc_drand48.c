
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int subi; } ;


 double erand48 (int ) ;
 int init_rand48 () ;
 TYPE_1__ rand48 ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

double vlc_drand48 (void)
{
    double ret;

    vlc_mutex_lock (&rand48.lock);
    init_rand48 ();
    ret = erand48 (rand48.subi);
    vlc_mutex_unlock (&rand48.lock);
    return ret;
}
