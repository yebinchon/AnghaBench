
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int EINVAL ;
 int vmcs_field_encoding (int) ;
 int vmcs_read (int,int) ;

int
vmcs_getreg(int vcpuid, int ident, uint64_t *retval)
{
 uint32_t encoding;
 if (ident < 0)
  encoding = ident & 0x7fffffff;
 else
  encoding = vmcs_field_encoding(ident);

 if (encoding == (uint32_t)-1)
  return (EINVAL);

 *retval = vmcs_read(vcpuid, encoding);

 return (0);
}
