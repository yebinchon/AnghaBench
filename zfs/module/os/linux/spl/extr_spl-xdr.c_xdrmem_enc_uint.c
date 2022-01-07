
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;
typedef int XDR ;


 int BUILD_BUG_ON (int) ;
 int xdrmem_enc_uint32 (int *,unsigned int) ;

__attribute__((used)) static bool_t
xdrmem_enc_uint(XDR *xdrs, unsigned *up)
{
 BUILD_BUG_ON(sizeof (unsigned) != 4);

 return (xdrmem_enc_uint32(xdrs, *up));
}
