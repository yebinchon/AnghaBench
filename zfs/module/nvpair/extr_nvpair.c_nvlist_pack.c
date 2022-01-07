
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int nvlist_nv_alloc (int) ;
 int nvlist_xpack (int *,char**,size_t*,int,int ) ;

int
nvlist_pack(nvlist_t *nvl, char **bufp, size_t *buflen, int encoding,
    int kmflag)
{
 return (nvlist_xpack(nvl, bufp, buflen, encoding,
     nvlist_nv_alloc(kmflag)));
}
