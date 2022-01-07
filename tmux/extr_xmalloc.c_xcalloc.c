
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;
 int errno ;
 int fatalx (char*,...) ;
 int strerror (int ) ;

void *
xcalloc(size_t nmemb, size_t size)
{
 void *ptr;

 if (size == 0 || nmemb == 0)
  fatalx("xcalloc: zero size");
 ptr = calloc(nmemb, size);
 if (ptr == ((void*)0))
  fatalx("xcalloc: allocating %zu * %zu bytes: %s",
      nmemb, size, strerror(errno));
 return ptr;
}
