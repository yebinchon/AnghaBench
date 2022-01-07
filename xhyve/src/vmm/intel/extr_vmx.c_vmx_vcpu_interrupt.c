
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hv_vcpuid_t ;


 int hv_vcpu_interrupt (scalar_t__*,int) ;

__attribute__((used)) static void
vmx_vcpu_interrupt(int vcpu) {
 hv_vcpuid_t hvvcpu;

 hvvcpu = (hv_vcpuid_t) vcpu;

 hv_vcpu_interrupt(&hvvcpu, 1);
}
