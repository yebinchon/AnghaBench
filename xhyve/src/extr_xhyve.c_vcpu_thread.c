
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct mt_vmm_info {int mt_vcpu; } ;
struct TYPE_2__ {int rip; scalar_t__ inst_length; } ;


 int BSP ;
 int assert (int) ;
 int exit (int) ;
 int fw_func () ;
 int spinup_ap_realmode (int,int*) ;
 int vcpu_loop (int,int) ;
 int vcpu_set_capabilities (int) ;
 TYPE_1__* vmexit ;
 int xh_vcpu_create (int) ;
 int xh_vcpu_reset (int) ;

__attribute__((used)) static void *
vcpu_thread(void *param)
{
 struct mt_vmm_info *mtp;
 uint64_t rip_entry;
 int vcpu;
 int error;

 mtp = param;
 vcpu = mtp->mt_vcpu;
 rip_entry = 0xfff0;

 error = xh_vcpu_create(vcpu);
 assert(error == 0);

 vcpu_set_capabilities(vcpu);

 error = xh_vcpu_reset(vcpu);
 assert(error == 0);

 if (vcpu == BSP) {
        if (fw_func != ((void*)0)) {
            rip_entry = fw_func();
        } else {
            rip_entry = 0xFFF0;
        }
 } else {
  rip_entry = vmexit[vcpu].rip;
  spinup_ap_realmode(vcpu, &rip_entry);
 }

 vmexit[vcpu].rip = rip_entry;
 vmexit[vcpu].inst_length = 0;

 vcpu_loop(vcpu, vmexit[vcpu].rip);


 exit(1);
 return (((void*)0));
}
