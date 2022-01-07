
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LeaveCriticalSection (int *) ;
 int * global_init_lock ;
 int pthread_mutex_unlock (int **) ;
 int release_sem (int *) ;

void
__xmlGlobalInitMutexUnlock(void)
{
}
