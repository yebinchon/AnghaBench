
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmm_stat_type {int (* func ) (struct vm*,int,struct vmm_stat_type*) ;} ;
struct vm {int dummy; } ;


 int EINVAL ;
 int VM_MAXCPU ;
 int stub1 (struct vm*,int,struct vmm_stat_type*) ;
 int * vcpu_stats (struct vm*,int) ;
 int vst_num_elems ;
 int vst_num_types ;
 struct vmm_stat_type** vsttab ;

int
vmm_stat_copy(struct vm *vm, int vcpu, int *num_stats, uint64_t *buf)
{
 struct vmm_stat_type *vst;
 uint64_t *stats;
 int i;

 if (vcpu < 0 || vcpu >= VM_MAXCPU)
  return (EINVAL);


 for (i = 0; i < vst_num_types; i++) {
  vst = vsttab[i];
  if (vst->func != ((void*)0))
   (*vst->func)(vm, vcpu, vst);
 }


 stats = vcpu_stats(vm, vcpu);
 for (i = 0; i < vst_num_elems; i++)
  buf[i] = stats[i];
 *num_stats = vst_num_elems;
 return (0);
}
