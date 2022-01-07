
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_bytesrec {scalar_t__ xc_num_avail; int xc_is_last_record; } ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ x_addr; scalar_t__ x_addr_end; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;
 int XDR_GET_BYTES_AVAIL ;

__attribute__((used)) static bool_t
xdrmem_control(XDR *xdrs, int req, void *info)
{
 struct xdr_bytesrec *rec = (struct xdr_bytesrec *)info;

 if (req != XDR_GET_BYTES_AVAIL)
  return (FALSE);

 rec->xc_is_last_record = TRUE;
 rec->xc_num_avail = xdrs->x_addr_end - xdrs->x_addr;

 return (TRUE);
}
