
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bool_t ;
typedef int XDR ;


 int BUILD_BUG_ON (int) ;
 int xdrmem_dec_uint32 (int *,int *) ;

__attribute__((used)) static bool_t
xdrmem_dec_uint(XDR *xdrs, unsigned *up)
{
 BUILD_BUG_ON(sizeof (unsigned) != 4);

 return (xdrmem_dec_uint32(xdrs, (uint32_t *)up));
}
