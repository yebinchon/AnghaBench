
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct vmx {int vm; } ;


 int VCPU_CTR3 (int ,int,char*,char*,int ,int ) ;
 int exit_reason_to_str (int) ;

__attribute__((used)) static __inline void
vmx_exit_trace(struct vmx *vmx, int vcpu, uint64_t rip, uint32_t exit_reason,
        int handled)
{





 (void) vmx;
 (void) vcpu;
 (void) rip;
 (void) exit_reason;
 (void) handled;

}
