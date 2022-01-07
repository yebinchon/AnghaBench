
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANON ;
 int MAP_NORESERVE ;
 int MAP_PRIVATE ;
 scalar_t__ PAGE ;
 int abort () ;
 int assert (int) ;
 int init_thp_state () ;
 int malloc_write (char*) ;
 int mmap_flags ;
 scalar_t__ opt_abort ;
 int os_overcommits ;
 int os_overcommits_proc () ;
 int os_overcommits_sysctl () ;
 scalar_t__ os_page ;
 scalar_t__ os_page_detect () ;
 void* os_pages_map (int *,scalar_t__,scalar_t__,int*) ;
 int os_pages_unmap (void*,scalar_t__) ;
 scalar_t__ pages_can_purge_lazy ;
 int pages_can_purge_lazy_runtime ;
 scalar_t__ pages_purge_lazy (void*,scalar_t__) ;

bool
pages_boot(void) {
 os_page = os_page_detect();
 if (os_page > PAGE) {
  malloc_write("<jemalloc>: Unsupported system page size\n");
  if (opt_abort) {
   abort();
  }
  return 1;
 }


 mmap_flags = MAP_PRIVATE | MAP_ANON;
 os_overcommits = 0;


 init_thp_state();


 if (pages_can_purge_lazy) {
  bool committed = 0;
  void *madv_free_page = os_pages_map(((void*)0), PAGE, PAGE, &committed);
  if (madv_free_page == ((void*)0)) {
   return 1;
  }
  assert(pages_can_purge_lazy_runtime);
  if (pages_purge_lazy(madv_free_page, PAGE)) {
   pages_can_purge_lazy_runtime = 0;
  }
  os_pages_unmap(madv_free_page, PAGE);
 }

 return 0;
}
