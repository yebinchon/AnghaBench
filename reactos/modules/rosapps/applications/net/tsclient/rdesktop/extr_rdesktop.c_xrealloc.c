
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,int) ;
 int exit (int) ;
 void* realloc (void*,int) ;

void *
xrealloc(void *oldmem, int size)
{
 void *mem;

 if (size < 1)
  size = 1;
 mem = realloc(oldmem, size);
 if (mem == ((void*)0))
 {
  error("xrealloc %d\n", size);
  exit(1);
 }
 return mem;
}
