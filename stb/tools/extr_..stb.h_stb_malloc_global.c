
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STB__alloc ;
 void* malloc_base (int *,size_t,int ,int ) ;
 int stb_alloc_alignment ;

void *stb_malloc_global(size_t size)
{
   return malloc_base(((void*)0), size, STB__alloc, stb_alloc_alignment);
}
