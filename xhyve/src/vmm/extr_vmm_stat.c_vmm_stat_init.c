
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (void*,int ) ;
 int vst_size ;

void
vmm_stat_init(void *vp)
{

 bzero(vp, vst_size);
}
