
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int nv_alloc_t ;


 int FM_NVA_FREE ;
 int fm_nva_xdestroy (int *) ;
 int nvlist_free (int *) ;
 int * nvlist_lookup_nv_alloc (int *) ;

void
fm_nvlist_destroy(nvlist_t *nvl, int flag)
{
 nv_alloc_t *nva = nvlist_lookup_nv_alloc(nvl);

 nvlist_free(nvl);

 if (nva != ((void*)0)) {
  if (flag == FM_NVA_FREE)
   fm_nva_xdestroy(nva);
 }
}
