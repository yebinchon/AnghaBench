
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nv_alloc_t ;


 int KM_SLEEP ;
 int kmem_free (int *,int) ;
 int * kmem_zalloc (int,int ) ;
 scalar_t__ nv_alloc_init (int *,int ,char*,size_t) ;
 int nv_fixed_ops ;

nv_alloc_t *
fm_nva_xcreate(char *buf, size_t bufsz)
{
 nv_alloc_t *nvhdl = kmem_zalloc(sizeof (nv_alloc_t), KM_SLEEP);

 if (bufsz == 0 || nv_alloc_init(nvhdl, nv_fixed_ops, buf, bufsz) != 0) {
  kmem_free(nvhdl, sizeof (nv_alloc_t));
  return (((void*)0));
 }

 return (nvhdl);
}
