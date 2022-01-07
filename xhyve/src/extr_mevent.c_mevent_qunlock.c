
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mevent_lmutex ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
mevent_qunlock(void)
{
 pthread_mutex_unlock(&mevent_lmutex);
}
