
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpriv_t ;
typedef int nvlist_t ;
typedef int nv_alloc_t ;


 int EINVAL ;
 int ENOMEM ;
 int NVS_OP_ENCODE ;
 int nv_mem_free (int *,char*,size_t) ;
 char* nv_mem_zalloc (int *,size_t) ;
 int nv_priv_init (int *,int *,int ) ;
 int nvlist_common (int *,char*,size_t*,int,int ) ;
 int nvlist_size (int *,size_t*,int) ;

int
nvlist_xpack(nvlist_t *nvl, char **bufp, size_t *buflen, int encoding,
    nv_alloc_t *nva)
{
 nvpriv_t nvpriv;
 size_t alloc_size;
 char *buf;
 int err;

 if (nva == ((void*)0) || nvl == ((void*)0) || bufp == ((void*)0) || buflen == ((void*)0))
  return (EINVAL);

 if (*bufp != ((void*)0))
  return (nvlist_common(nvl, *bufp, buflen, encoding,
      NVS_OP_ENCODE));
 nv_priv_init(&nvpriv, nva, 0);

 if ((err = nvlist_size(nvl, &alloc_size, encoding)))
  return (err);

 if ((buf = nv_mem_zalloc(&nvpriv, alloc_size)) == ((void*)0))
  return (ENOMEM);

 if ((err = nvlist_common(nvl, buf, &alloc_size, encoding,
     NVS_OP_ENCODE)) != 0) {
  nv_mem_free(&nvpriv, buf, alloc_size);
 } else {
  *buflen = alloc_size;
  *bufp = buf;
 }

 return (err);
}
