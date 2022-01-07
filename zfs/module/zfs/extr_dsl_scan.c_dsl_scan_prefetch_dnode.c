
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zb_blkid; scalar_t__ zb_level; } ;
typedef TYPE_1__ zbookmark_phys_t ;
typedef int uint64_t ;
typedef int scan_prefetch_ctx_t ;
typedef int dsl_scan_t ;
struct TYPE_9__ {int dn_nblkptr; int dn_flags; int * dn_blkptr; } ;
typedef TYPE_2__ dnode_phys_t ;


 scalar_t__ BP_GET_LEVEL (int *) ;
 int DMU_SPILL_BLKID ;
 int DNODE_FLAG_SPILL_BLKPTR ;
 int * DN_SPILL_BLKPTR (TYPE_2__*) ;
 int FTAG ;
 int SET_BOOKMARK (TYPE_1__*,int ,int ,int ,int ) ;
 int dsl_scan_prefetch (int *,int *,TYPE_1__*) ;
 int * scan_prefetch_ctx_create (int *,TYPE_2__*,int ) ;
 int scan_prefetch_ctx_rele (int *,int ) ;

__attribute__((used)) static void
dsl_scan_prefetch_dnode(dsl_scan_t *scn, dnode_phys_t *dnp,
    uint64_t objset, uint64_t object)
{
 int i;
 zbookmark_phys_t zb;
 scan_prefetch_ctx_t *spc;

 if (dnp->dn_nblkptr == 0 && !(dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR))
  return;

 SET_BOOKMARK(&zb, objset, object, 0, 0);

 spc = scan_prefetch_ctx_create(scn, dnp, FTAG);

 for (i = 0; i < dnp->dn_nblkptr; i++) {
  zb.zb_level = BP_GET_LEVEL(&dnp->dn_blkptr[i]);
  zb.zb_blkid = i;
  dsl_scan_prefetch(spc, &dnp->dn_blkptr[i], &zb);
 }

 if (dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR) {
  zb.zb_level = 0;
  zb.zb_blkid = DMU_SPILL_BLKID;
  dsl_scan_prefetch(spc, DN_SPILL_BLKPTR(dnp), &zb);
 }

 scan_prefetch_ctx_rele(spc, FTAG);
}
