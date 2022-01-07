
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mu_lock_mutex (int *) ;
 int * mutexes ;

__attribute__((used)) static void mudraw_lock(void *user, int lock)
{
 mu_lock_mutex(&mutexes[lock]);
}
