
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int sysfail (char*,size_t) ;

void *xmalloc(size_t sz) {
  void *p;

  p= malloc(sz); if (!p) sysfail("malloc",sz);
  return p;
}
