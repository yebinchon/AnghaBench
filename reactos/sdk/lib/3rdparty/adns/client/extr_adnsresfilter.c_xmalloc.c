
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int sysfail (char*) ;

__attribute__((used)) static void *xmalloc(size_t sz) {
  void *r;
  r= malloc(sz); if (r) return r;
  sysfail("malloc");
}
