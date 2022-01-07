
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ config_lazy_lock ;
 int have_background_thread ;
 int malloc_printf (char*) ;
 scalar_t__ opt_background_thread ;
 scalar_t__ pthread_create_fptr_init () ;

bool
background_thread_boot0(void) {
 if (!have_background_thread && opt_background_thread) {
  malloc_printf("<jemalloc>: option background_thread currently "
      "supports pthread only\n");
  return 1;
 }






 return 0;
}
