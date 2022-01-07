
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint_t ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ FALSE ;
 int KM_NOSLEEP ;
 scalar_t__ TRUE ;
 int UINT_MAX ;
 char* kmem_alloc (int const,int ) ;
 int kmem_free (char*,int const) ;
 int * memchr (char*,int ,int const) ;
 int xdrmem_dec_bytes (int *,char*,int const) ;
 int xdrmem_dec_uint (int *,int const*) ;

__attribute__((used)) static bool_t
xdr_dec_string(XDR *xdrs, char **sp, const uint_t maxsize)
{
 uint_t size;
 bool_t alloc = FALSE;

 if (!xdrmem_dec_uint(xdrs, &size))
  return (FALSE);

 if (size > maxsize || size > UINT_MAX - 1)
  return (FALSE);





 if (*sp == ((void*)0)) {
  BUILD_BUG_ON(sizeof (uint_t) > sizeof (size_t));

  *sp = kmem_alloc(size + 1, KM_NOSLEEP);
  if (*sp == ((void*)0))
   return (FALSE);

  alloc = TRUE;
 }

 if (!xdrmem_dec_bytes(xdrs, *sp, size))
  goto fail;

 if (memchr(*sp, 0, size) != ((void*)0))
  goto fail;

 (*sp)[size] = '\0';

 return (TRUE);

fail:
 if (alloc)
  kmem_free(*sp, size + 1);

 return (FALSE);
}
