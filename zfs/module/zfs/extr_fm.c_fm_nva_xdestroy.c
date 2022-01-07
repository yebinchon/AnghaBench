
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nv_alloc_t ;


 int kmem_free (int *,int) ;
 int nv_alloc_fini (int *) ;

void
fm_nva_xdestroy(nv_alloc_t *nva)
{
 nv_alloc_fini(nva);
 kmem_free(nva, sizeof (nv_alloc_t));
}
