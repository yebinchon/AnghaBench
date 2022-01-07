
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int hv_x86_reg_t ;
typedef int hv_vcpuid_t ;


 int hv_vcpu_write_register (int ,int ,int ) ;

__attribute__((used)) static __inline void
reg_write(int vcpuid, hv_x86_reg_t reg, uint64_t val) {
 hv_vcpu_write_register(((hv_vcpuid_t) vcpuid), reg, val);
}
