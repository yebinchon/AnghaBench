
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int ) ;
 int vst_size ;

void *
vmm_stat_alloc(void)
{

 return (malloc(vst_size));
}
