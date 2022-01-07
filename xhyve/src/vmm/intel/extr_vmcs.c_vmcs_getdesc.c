
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct seg_desc {scalar_t__ access; scalar_t__ limit; scalar_t__ base; } ;


 scalar_t__ VMCS_INVALID_ENCODING ;
 scalar_t__ vmcs_read (int,scalar_t__) ;
 int vmcs_seg_desc_encoding (int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int xhyve_abort (char*,int) ;

int
vmcs_getdesc(int vcpuid, int seg, struct seg_desc *desc)
{
 int error;
 uint32_t base, limit, access;

 error = vmcs_seg_desc_encoding(seg, &base, &limit, &access);
 if (error != 0)
  xhyve_abort("vmcs_setdesc: invalid segment register %d\n", seg);

 desc->base = vmcs_read(vcpuid, base);
 desc->limit = (uint32_t) vmcs_read(vcpuid, limit);
 if (access != VMCS_INVALID_ENCODING) {
  desc->access = (uint32_t) vmcs_read(vcpuid, access);
 }

 return (0);
}
