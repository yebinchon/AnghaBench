
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STB__nochildren ;
 void* malloc_base (void*,size_t,int ,int ) ;
 int stb_alloc_alignment ;

void *stb_malloc_leaf(void *context, size_t size)
{
   return malloc_base(context, size, STB__nochildren, stb_alloc_alignment);
}
