
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LeaveCriticalSection (int *) ;
 int * mutexes ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void unlock(void *user, int lock)
{



 (void)pthread_mutex_unlock(&mutexes[lock]);

}
