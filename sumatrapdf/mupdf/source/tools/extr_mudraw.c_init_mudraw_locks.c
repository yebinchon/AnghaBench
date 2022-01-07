
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_locks_context ;


 int FZ_LOCK_MAX ;
 int fin_mudraw_locks () ;
 int mu_create_mutex (int *) ;
 int mudraw_locks ;
 int * mutexes ;

__attribute__((used)) static fz_locks_context *init_mudraw_locks(void)
{
 int i;
 int failed = 0;

 for (i = 0; i < FZ_LOCK_MAX; i++)
  failed |= mu_create_mutex(&mutexes[i]);

 if (failed)
 {
  fin_mudraw_locks();
  return ((void*)0);
 }

 return &mudraw_locks;
}
