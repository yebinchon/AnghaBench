
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 size_t strlen (char*) ;
 int xdrmem_enc_bytes (int *,char*,size_t) ;
 int xdrmem_enc_uint (int *,size_t*) ;

__attribute__((used)) static bool_t
xdr_enc_string(XDR *xdrs, char **sp, const uint_t maxsize)
{
 size_t slen = strlen(*sp);
 uint_t len;

 if (slen > maxsize)
  return (FALSE);

 len = slen;

 if (!xdrmem_enc_uint(xdrs, &len))
  return (FALSE);

 return (xdrmem_enc_bytes(xdrs, *sp, len));
}
