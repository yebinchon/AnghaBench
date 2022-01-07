
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int spc_root; scalar_t__ spc_indblkshift; scalar_t__ spc_datablkszsec; int * spc_scn; int spc_refcnt; } ;
typedef TYPE_1__ scan_prefetch_ctx_t ;
typedef int dsl_scan_t ;
struct TYPE_7__ {scalar_t__ dn_indblkshift; scalar_t__ dn_datablkszsec; } ;
typedef TYPE_2__ dnode_phys_t ;


 int B_FALSE ;
 int B_TRUE ;
 int KM_SLEEP ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int zfs_refcount_add (int *,void*) ;
 int zfs_refcount_create (int *) ;

__attribute__((used)) static scan_prefetch_ctx_t *
scan_prefetch_ctx_create(dsl_scan_t *scn, dnode_phys_t *dnp, void *tag)
{
 scan_prefetch_ctx_t *spc;

 spc = kmem_alloc(sizeof (scan_prefetch_ctx_t), KM_SLEEP);
 zfs_refcount_create(&spc->spc_refcnt);
 zfs_refcount_add(&spc->spc_refcnt, tag);
 spc->spc_scn = scn;
 if (dnp != ((void*)0)) {
  spc->spc_datablkszsec = dnp->dn_datablkszsec;
  spc->spc_indblkshift = dnp->dn_indblkshift;
  spc->spc_root = B_FALSE;
 } else {
  spc->spc_datablkszsec = 0;
  spc->spc_indblkshift = 0;
  spc->spc_root = B_TRUE;
 }

 return (spc);
}
