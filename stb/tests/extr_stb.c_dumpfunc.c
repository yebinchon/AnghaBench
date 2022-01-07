
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc_num ;
 int alloc_size ;
 int printf (char*,void*,int,int,char*) ;

void dumpfunc(void *ptr, int sz, char *file, int line)
{
   printf("%p (%6d)  -- %3d:%s\n", ptr, sz, line, file);
   alloc_size += sz;
   alloc_num += 1;
}
