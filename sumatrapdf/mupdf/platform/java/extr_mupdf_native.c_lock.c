
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnterCriticalSection (int *) ;
 int * mutexes ;
 int pthread_mutex_lock (int *) ;

__attribute__((used)) static void lock(void *user, int lock)
{



 (void)pthread_mutex_lock(&mutexes[lock]);

}
