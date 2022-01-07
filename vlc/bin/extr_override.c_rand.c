
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int seed; } ;


 int LOG (char*,char*) ;
 TYPE_1__ prng ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int rand_r (int *) ;

int rand (void)
{
    int ret;

    pthread_mutex_lock (&prng.lock);
    LOG("Warning", "");
    ret = rand_r (&prng.seed);
    pthread_mutex_unlock (&prng.lock);
    return ret;
}
