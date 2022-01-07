
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int seed; int lock; } ;


 int LOG (char*,char*,unsigned int) ;
 TYPE_1__ prng ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void srand (unsigned int seed)
{
    pthread_mutex_lock (&prng.lock);
    LOG("Warning", "%u", seed);
    prng.seed = seed;
    pthread_mutex_unlock (&prng.lock);
}
