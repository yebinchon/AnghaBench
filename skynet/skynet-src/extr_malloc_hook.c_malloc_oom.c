
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fflush (int ) ;
 int fprintf (int ,char*,size_t) ;
 int stderr ;

__attribute__((used)) static void malloc_oom(size_t size) {
 fprintf(stderr, "xmalloc: Out of memory trying to allocate %zu bytes\n",
  size);
 fflush(stderr);
 abort();
}
