
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ pthread_create (int *,int *,void* (*) (void*),void*) ;
 int stderr ;

__attribute__((used)) static void
create_thread(pthread_t *thread, void *(*start_routine) (void *), void *arg) {
 if (pthread_create(thread,((void*)0), start_routine, arg)) {
  fprintf(stderr, "Create thread failed");
  exit(1);
 }
}
