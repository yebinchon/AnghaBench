
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_longlong_t ;
typedef int bool_t ;
typedef int XDR ;


 int BUILD_BUG_ON (int) ;
 int FALSE ;
 int xdrmem_enc_uint32 (int *,int) ;

__attribute__((used)) static bool_t
xdrmem_enc_ulonglong(XDR *xdrs, u_longlong_t *ullp)
{
 BUILD_BUG_ON(sizeof (u_longlong_t) != 8);

 if (!xdrmem_enc_uint32(xdrs, *ullp >> 32))
  return (FALSE);

 return (xdrmem_enc_uint32(xdrs, *ullp & 0xffffffff));
}
