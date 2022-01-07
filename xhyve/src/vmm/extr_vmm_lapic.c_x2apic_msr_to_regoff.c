
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static u_int
x2apic_msr_to_regoff(u_int msr)
{

 return ((msr - 0x800) << 4);
}
