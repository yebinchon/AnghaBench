
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int callout_cnd ;
 int callout_mtx ;
 int * callout_queue ;
 int callout_thread ;
 int callout_thread_func ;
 int initialized ;
 int mach_timebase_info (int *) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_create (int *,int *,int *,int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int timebase_info ;
 int work ;

void callout_system_init(void) {
  if (initialized) {
    return;
  }

  mach_timebase_info(&timebase_info);

  if (pthread_mutex_init(&callout_mtx, ((void*)0))) {
    abort();
  }

  if (pthread_cond_init(&callout_cnd, ((void*)0))) {
    abort();
  }

  callout_queue = ((void*)0);
  work = 0;

  if (pthread_create(&callout_thread, ((void*)0), &callout_thread_func,
    ((void*)0)))
  {
    abort();
  }

  initialized = 1;
}
