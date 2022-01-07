
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct seg_desc {int access; int limit; int base; } ;


 scalar_t__ VMCS_INVALID_ENCODING ;
 int vmcs_seg_desc_encoding (int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int vmcs_write (int,scalar_t__,int ) ;
 int xhyve_abort (char*,int) ;

int
vmcs_setdesc(int vcpuid, int seg, struct seg_desc *desc)
{
 int error;
 uint32_t base, limit, access;

 error = vmcs_seg_desc_encoding(seg, &base, &limit, &access);
 if (error != 0)
  xhyve_abort("vmcs_setdesc: invalid segment register %d\n", seg);

 vmcs_write(vcpuid, base, desc->base);
 vmcs_write(vcpuid, limit, desc->limit);
 if (access != VMCS_INVALID_ENCODING) {
  vmcs_write(vcpuid, access, desc->access);
 }

 return (0);
}
