
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zb_blkid; } ;
typedef TYPE_1__ zbookmark_phys_t ;
struct TYPE_9__ {int dn_objset; int dn_object; TYPE_3__* dn_phys; } ;
typedef TYPE_2__ dnode_t ;
struct TYPE_10__ {int dn_nblkptr; int * dn_blkptr; scalar_t__ dn_nlevels; } ;
typedef TYPE_3__ dnode_phys_t ;


 int SET_BOOKMARK (TYPE_1__*,int ,int ,scalar_t__,int ) ;
 int dmu_objset_id (int ) ;
 int dmu_objset_spa (int ) ;
 int printf (char*) ;
 int visit_indirect (int ,TYPE_3__*,int *,TYPE_1__*) ;

__attribute__((used)) static void
dump_indirect(dnode_t *dn)
{
 dnode_phys_t *dnp = dn->dn_phys;
 int j;
 zbookmark_phys_t czb;

 (void) printf("Indirect blocks:\n");

 SET_BOOKMARK(&czb, dmu_objset_id(dn->dn_objset),
     dn->dn_object, dnp->dn_nlevels - 1, 0);
 for (j = 0; j < dnp->dn_nblkptr; j++) {
  czb.zb_blkid = j;
  (void) visit_indirect(dmu_objset_spa(dn->dn_objset), dnp,
      &dnp->dn_blkptr[j], &czb);
 }

 (void) printf("\n");
}
