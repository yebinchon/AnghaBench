
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bool_t ;
typedef int XDR ;


 int BUILD_BUG_ON (int) ;
 int FALSE ;
 int TRUE ;
 int xdrmem_dec_uint32 (int *,int*) ;

__attribute__((used)) static bool_t
xdrmem_dec_char(XDR *xdrs, char *cp)
{
 uint32_t val;

 BUILD_BUG_ON(sizeof (char) != 1);

 if (!xdrmem_dec_uint32(xdrs, &val))
  return (FALSE);






 if (val > 0xff)
  return (FALSE);

 *((unsigned char *) cp) = val;

 return (TRUE);
}
