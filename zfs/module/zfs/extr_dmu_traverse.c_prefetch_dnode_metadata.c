
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
typedef int uint64_t ;
typedef int traverse_data_t ;
struct TYPE_4__ {int dn_nblkptr; int dn_flags; int * dn_blkptr; scalar_t__ dn_nlevels; } ;
typedef TYPE_1__ dnode_phys_t ;


 int DMU_SPILL_BLKID ;
 int DNODE_FLAG_SPILL_BLKPTR ;
 int * DN_SPILL_BLKPTR (TYPE_1__ const*) ;
 int SET_BOOKMARK (int *,int ,int ,scalar_t__,int) ;
 int traverse_prefetch_metadata (int *,int *,int *) ;

__attribute__((used)) static void
prefetch_dnode_metadata(traverse_data_t *td, const dnode_phys_t *dnp,
    uint64_t objset, uint64_t object)
{
 int j;
 zbookmark_phys_t czb;

 for (j = 0; j < dnp->dn_nblkptr; j++) {
  SET_BOOKMARK(&czb, objset, object, dnp->dn_nlevels - 1, j);
  traverse_prefetch_metadata(td, &dnp->dn_blkptr[j], &czb);
 }

 if (dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR) {
  SET_BOOKMARK(&czb, objset, object, 0, DMU_SPILL_BLKID);
  traverse_prefetch_metadata(td, DN_SPILL_BLKPTR(dnp), &czb);
 }
}
