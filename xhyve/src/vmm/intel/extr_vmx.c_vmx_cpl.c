
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int VMCS_GUEST_SS_ACCESS_RIGHTS ;
 scalar_t__ vmcs_read (int,int ) ;

__attribute__((used)) static int
vmx_cpl(int vcpu)
{
 uint32_t ssar;

 ssar = (uint32_t) vmcs_read(vcpu, VMCS_GUEST_SS_ACCESS_RIGHTS);
 return ((ssar >> 5) & 0x3);
}
