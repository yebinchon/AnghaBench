
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_24__ {TYPE_1__* os_phys; int os_flags; int os_encrypted; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_25__ {void** ds_feature_activation; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_26__ {scalar_t__ dn_datablkshift; int dn_indblkshift; int* dn_next_nlevels; int dn_nlevels; scalar_t__ dn_nblkptr; } ;
typedef TYPE_4__ dnode_t ;
struct TYPE_27__ {size_t tx_txg; } ;
typedef TYPE_5__ dmu_tx_t ;
typedef scalar_t__ dmu_objset_type_t ;
typedef int blkptr_t ;
struct TYPE_23__ {int os_flags; scalar_t__ os_type; } ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 TYPE_4__* DMU_META_DNODE (TYPE_2__*) ;
 scalar_t__ DMU_OST_ANY ;
 scalar_t__ DMU_OST_NONE ;
 scalar_t__ DMU_OST_NUMTYPES ;
 int DMU_OT_DNODE ;
 int DMU_OT_NONE ;
 int DNODE_BLOCK_SIZE ;
 int DNODE_MIN_SLOTS ;
 scalar_t__ DNODE_SHIFT ;
 int DN_MAX_INDBLKSHIFT ;
 scalar_t__ DN_MAX_OBJECT ;
 int OBJSET_FLAG_PROJECTQUOTA_COMPLETE ;
 int OBJSET_FLAG_USERACCOUNTING_COMPLETE ;
 int OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE ;
 int SPA_BLKPTRSHIFT ;
 size_t SPA_FEATURE_PROJECT_QUOTA ;
 size_t SPA_FEATURE_USEROBJ_ACCOUNTING ;
 size_t TXG_MASK ;
 int VERIFY0 (int ) ;
 int dmu_objset_from_ds (TYPE_3__*,TYPE_2__**) ;
 int dmu_objset_is_receiving (TYPE_2__*) ;
 int dmu_objset_open_impl (int *,int *,int *,TYPE_2__**) ;
 scalar_t__ dmu_objset_projectquota_enabled (TYPE_2__*) ;
 scalar_t__ dmu_objset_userobjused_enabled (TYPE_2__*) ;
 scalar_t__ dmu_objset_userused_enabled (TYPE_2__*) ;
 int dmu_tx_is_syncing (TYPE_5__*) ;
 int dnode_allocate (TYPE_4__*,int ,int,int,int ,int ,int ,TYPE_5__*) ;
 int dsl_dataset_dirty (TYPE_3__*,TYPE_5__*) ;

objset_t *
dmu_objset_create_impl_dnstats(spa_t *spa, dsl_dataset_t *ds, blkptr_t *bp,
    dmu_objset_type_t type, int levels, int blksz, int ibs, dmu_tx_t *tx)
{
 objset_t *os;
 dnode_t *mdn;

 ASSERT(dmu_tx_is_syncing(tx));

 if (blksz == 0)
  blksz = DNODE_BLOCK_SIZE;
 if (ibs == 0)
  ibs = DN_MAX_INDBLKSHIFT;

 if (ds != ((void*)0))
  VERIFY0(dmu_objset_from_ds(ds, &os));
 else
  VERIFY0(dmu_objset_open_impl(spa, ((void*)0), bp, &os));

 mdn = DMU_META_DNODE(os);

 dnode_allocate(mdn, DMU_OT_DNODE, blksz, ibs, DMU_OT_NONE, 0,
     DNODE_MIN_SLOTS, tx);
 if (ds != ((void*)0)) {
  if (levels == 0) {
   levels = 1;
   while ((uint64_t)mdn->dn_nblkptr <<
       (mdn->dn_datablkshift - DNODE_SHIFT + (levels - 1) *
       (mdn->dn_indblkshift - SPA_BLKPTRSHIFT)) <
       DN_MAX_OBJECT)
    levels++;
  }

  mdn->dn_next_nlevels[tx->tx_txg & TXG_MASK] =
      mdn->dn_nlevels = levels;
 }

 ASSERT(type != DMU_OST_NONE);
 ASSERT(type != DMU_OST_ANY);
 ASSERT(type < DMU_OST_NUMTYPES);
 os->os_phys->os_type = type;





 if (dmu_objset_userused_enabled(os) &&
     (!os->os_encrypted || !dmu_objset_is_receiving(os))) {
  os->os_phys->os_flags |= OBJSET_FLAG_USERACCOUNTING_COMPLETE;
  if (dmu_objset_userobjused_enabled(os)) {
   ds->ds_feature_activation[
       SPA_FEATURE_USEROBJ_ACCOUNTING] = (void *)B_TRUE;
   os->os_phys->os_flags |=
       OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE;
  }
  if (dmu_objset_projectquota_enabled(os)) {
   ds->ds_feature_activation[
       SPA_FEATURE_PROJECT_QUOTA] = (void *)B_TRUE;
   os->os_phys->os_flags |=
       OBJSET_FLAG_PROJECTQUOTA_COMPLETE;
  }
  os->os_flags = os->os_phys->os_flags;
 }

 dsl_dataset_dirty(ds, tx);

 return (os);
}
