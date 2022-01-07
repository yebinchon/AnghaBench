
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int fail (char*) ;
 scalar_t__ pthread_mutex_lock (int *) ;

void lock_mutex(void *user, int lock)
{
 pthread_mutex_t *mutex = (pthread_mutex_t *) user;

 if (pthread_mutex_lock(&mutex[lock]) != 0)
  fail("pthread_mutex_lock()");
}
