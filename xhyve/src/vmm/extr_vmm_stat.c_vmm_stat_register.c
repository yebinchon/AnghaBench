
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmm_stat_type {char* desc; scalar_t__ nelems; scalar_t__ index; } ;


 scalar_t__ MAX_VMM_STAT_ELEMS ;
 int printf (char*,char*) ;
 scalar_t__ vst_num_elems ;
 int vst_num_types ;
 struct vmm_stat_type** vsttab ;

void
vmm_stat_register(void *arg)
{
 struct vmm_stat_type *vst = arg;


 if (vst->desc == ((void*)0))
  return;

 if (vst_num_elems + vst->nelems >= MAX_VMM_STAT_ELEMS) {
  printf("Cannot accomodate vmm stat type \"%s\"!\n", vst->desc);
  return;
 }

 vst->index = vst_num_elems;
 vst_num_elems += vst->nelems;

 vsttab[vst_num_types++] = vst;
}
