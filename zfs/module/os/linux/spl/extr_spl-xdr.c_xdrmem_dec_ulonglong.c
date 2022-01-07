
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_longlong_t ;
typedef int bool_t ;
typedef int XDR ;


 int BUILD_BUG_ON (int) ;
 int FALSE ;
 int TRUE ;
 int xdrmem_dec_uint32 (int *,int*) ;

__attribute__((used)) static bool_t
xdrmem_dec_ulonglong(XDR *xdrs, u_longlong_t *ullp)
{
 uint32_t low, high;

 BUILD_BUG_ON(sizeof (u_longlong_t) != 8);

 if (!xdrmem_dec_uint32(xdrs, &high))
  return (FALSE);
 if (!xdrmem_dec_uint32(xdrs, &low))
  return (FALSE);

 *ullp = ((u_longlong_t)high << 32) | low;

 return (TRUE);
}
