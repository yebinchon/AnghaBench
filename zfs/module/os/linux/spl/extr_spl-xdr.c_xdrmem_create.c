
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef enum xdr_op { ____Placeholder_xdr_op } xdr_op ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {int x_op; scalar_t__ x_addr; scalar_t__ x_addr_end; int * x_ops; } ;
typedef TYPE_1__ XDR ;




 int xdrmem_decode_ops ;
 int xdrmem_encode_ops ;

void
xdrmem_create(XDR *xdrs, const caddr_t addr, const uint_t size,
    const enum xdr_op op)
{
 switch (op) {
  case 128:
   xdrs->x_ops = &xdrmem_encode_ops;
   break;
  case 129:
   xdrs->x_ops = &xdrmem_decode_ops;
   break;
  default:
   xdrs->x_ops = ((void*)0);
   return;
 }

 xdrs->x_op = op;
 xdrs->x_addr = addr;
 xdrs->x_addr_end = addr + size;

 if (xdrs->x_addr_end < xdrs->x_addr) {
  xdrs->x_ops = ((void*)0);
 }
}
