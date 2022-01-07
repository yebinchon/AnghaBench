
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32_t ;
typedef int bool_t ;
typedef int XDR ;


 int BUILD_BUG_ON (int) ;
 int xdrmem_enc_uint32 (int *,unsigned char) ;

__attribute__((used)) static bool_t
xdrmem_enc_char(XDR *xdrs, char *cp)
{
 uint32_t val;

 BUILD_BUG_ON(sizeof (char) != 1);
 val = *((unsigned char *) cp);

 return (xdrmem_enc_uint32(xdrs, val));
}
