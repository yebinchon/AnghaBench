
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int mt_vcpu; int mt_thr; } ;
struct TYPE_4__ {int rip; } ;


 int BSP ;
 int CPU_SET_ATOMIC (unsigned int,int *) ;
 int assert (int) ;
 int cpumask ;
 TYPE_2__* mt_vmm_info ;
 int pthread_create (int *,int *,int ,TYPE_2__*) ;
 int vcpu_thread ;
 TYPE_1__* vmexit ;
 int xh_vm_activate_cpu (int) ;

void
vcpu_add(int fromcpu, int newcpu, uint64_t rip)
{
 int error;

 assert(fromcpu == BSP);







 error = xh_vm_activate_cpu(newcpu);
 assert(error == 0);

 CPU_SET_ATOMIC(((unsigned) newcpu), &cpumask);

 mt_vmm_info[newcpu].mt_vcpu = newcpu;

 vmexit[newcpu].rip = rip;

 error = pthread_create(&mt_vmm_info[newcpu].mt_thr, ((void*)0), vcpu_thread,
  &mt_vmm_info[newcpu]);

 assert(error == 0);
}
