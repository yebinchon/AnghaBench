
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vcpu {int exc_vector; scalar_t__ exc_errcode; scalar_t__ exc_errcode_valid; scalar_t__ exception_pending; } ;


 int VM_INTINFO_DEL_ERRCODE ;
 int VM_INTINFO_HWEXCEPTION ;
 int VM_INTINFO_VALID ;

__attribute__((used)) static uint64_t
vcpu_exception_intinfo(struct vcpu *vcpu)
{
 uint64_t info = 0;

 if (vcpu->exception_pending) {
  info = vcpu->exc_vector & 0xff;
  info |= VM_INTINFO_VALID | VM_INTINFO_HWEXCEPTION;
  if (vcpu->exc_errcode_valid) {
   info |= VM_INTINFO_DEL_ERRCODE;
   info |= (uint64_t)vcpu->exc_errcode << 32;
  }
 }
 return (info);
}
