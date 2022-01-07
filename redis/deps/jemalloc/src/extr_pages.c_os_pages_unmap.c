
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 void* ALIGNMENT_ADDR2BASE (void*,int ) ;
 size_t ALIGNMENT_CEILING (size_t,int ) ;
 int BUFERROR_BUF ;
 int MEM_RELEASE ;
 scalar_t__ VirtualFree (void*,int ,int ) ;
 int abort () ;
 int assert (int) ;
 int buferror (int ,char*,int) ;
 int get_errno () ;
 int malloc_printf (char*,char*) ;
 int munmap (void*,size_t) ;
 scalar_t__ opt_abort ;
 int os_page ;

__attribute__((used)) static void
os_pages_unmap(void *addr, size_t size) {
 assert(ALIGNMENT_ADDR2BASE(addr, os_page) == addr);
 assert(ALIGNMENT_CEILING(size, os_page) == size);




 if (munmap(addr, size) == -1)

 {
  char buf[BUFERROR_BUF];

  buferror(get_errno(), buf, sizeof(buf));
  malloc_printf("<jemalloc>: Error in "



      "munmap"

      "(): %s\n", buf);
  if (opt_abort) {
   abort();
  }
 }
}
