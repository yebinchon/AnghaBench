
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fatalx (char*,...) ;
 void* reallocarray (void*,size_t,size_t) ;
 int strerror (int ) ;

void *
xreallocarray(void *ptr, size_t nmemb, size_t size)
{
 void *new_ptr;

 if (nmemb == 0 || size == 0)
  fatalx("xreallocarray: zero size");
 new_ptr = reallocarray(ptr, nmemb, size);
 if (new_ptr == ((void*)0))
  fatalx("xreallocarray: allocating %zu * %zu bytes: %s",
      nmemb, size, strerror(errno));
 return new_ptr;
}
