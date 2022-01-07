
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fatalx (char*,...) ;
 void* malloc (size_t) ;
 int strerror (int ) ;

void *
xmalloc(size_t size)
{
 void *ptr;

 if (size == 0)
  fatalx("xmalloc: zero size");
 ptr = malloc(size);
 if (ptr == ((void*)0))
  fatalx("xmalloc: allocating %zu bytes: %s",
      size, strerror(errno));
 return ptr;
}
