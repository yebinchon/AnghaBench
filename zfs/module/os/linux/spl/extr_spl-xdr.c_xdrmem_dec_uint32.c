
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ x_addr; scalar_t__ x_addr_end; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static bool_t
xdrmem_dec_uint32(XDR *xdrs, uint32_t *val)
{
 if (xdrs->x_addr + sizeof (uint32_t) > xdrs->x_addr_end)
  return (FALSE);

 *val = be32_to_cpu(*((uint32_t *)xdrs->x_addr));

 xdrs->x_addr += sizeof (uint32_t);

 return (TRUE);
}
