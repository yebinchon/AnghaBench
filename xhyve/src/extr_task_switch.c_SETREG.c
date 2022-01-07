
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int assert (int) ;
 int xh_vm_set_register (int,int,int ) ;

__attribute__((used)) static void
SETREG(int vcpu, int reg, uint64_t val)
{
 int error;

 error = xh_vm_set_register(vcpu, reg, val);
 assert(error == 0);
}
