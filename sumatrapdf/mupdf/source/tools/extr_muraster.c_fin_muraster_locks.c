
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FZ_LOCK_MAX ;
 int mu_destroy_mutex (int *) ;
 int * mutexes ;

__attribute__((used)) static void fin_muraster_locks(void)
{
 int i;

 for (i = 0; i < FZ_LOCK_MAX; i++)
  mu_destroy_mutex(&mutexes[i]);
}
