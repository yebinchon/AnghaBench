
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
struct drr_begin {int drr_toname; int drr_flags; int drr_versioninfo; int drr_fromguid; int drr_toguid; int drr_type; int drr_creation_time; int drr_magic; } ;
struct TYPE_10__ {int zbm_guid; } ;
struct dmu_send_params {TYPE_3__* to_ds; scalar_t__ is_clone; TYPE_1__ ancestor_zb; } ;
typedef int objset_t ;
struct TYPE_12__ {int ds_is_snapshot; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_11__ {struct drr_begin drr_begin; } ;
struct TYPE_13__ {TYPE_2__ drr_u; int drr_type; } ;
typedef TYPE_4__ dmu_replay_record_t ;
struct TYPE_14__ {int ds_flags; int ds_guid; int ds_creation_time; } ;


 int DMU_BACKUP_MAGIC ;
 int DMU_SET_FEATUREFLAGS (int ,int ) ;
 int DMU_SET_STREAM_HDRTYPE (int ,int ) ;
 int DMU_SUBSTREAM ;
 int DRR_BEGIN ;
 int DRR_FLAG_CI_DATA ;
 int DRR_FLAG_CLONE ;
 int DRR_FLAG_FREERECORDS ;
 int DRR_FLAG_SPILL_BLOCK ;
 int DS_FLAG_CI_DATASET ;
 int KM_SLEEP ;
 int dmu_objset_type (int *) ;
 int dsl_dataset_name (TYPE_3__*,int ) ;
 TYPE_6__* dsl_dataset_phys (TYPE_3__*) ;
 TYPE_4__* kmem_zalloc (int,int ) ;
 int strlcat (int ,char*,int) ;
 scalar_t__ zfs_send_set_freerecords_bit ;

__attribute__((used)) static dmu_replay_record_t *
create_begin_record(struct dmu_send_params *dspp, objset_t *os,
    uint64_t featureflags)
{
 dmu_replay_record_t *drr = kmem_zalloc(sizeof (dmu_replay_record_t),
     KM_SLEEP);
 drr->drr_type = DRR_BEGIN;

 struct drr_begin *drrb = &drr->drr_u.drr_begin;
 dsl_dataset_t *to_ds = dspp->to_ds;

 drrb->drr_magic = DMU_BACKUP_MAGIC;
 drrb->drr_creation_time = dsl_dataset_phys(to_ds)->ds_creation_time;
 drrb->drr_type = dmu_objset_type(os);
 drrb->drr_toguid = dsl_dataset_phys(to_ds)->ds_guid;
 drrb->drr_fromguid = dspp->ancestor_zb.zbm_guid;

 DMU_SET_STREAM_HDRTYPE(drrb->drr_versioninfo, DMU_SUBSTREAM);
 DMU_SET_FEATUREFLAGS(drrb->drr_versioninfo, featureflags);

 if (dspp->is_clone)
  drrb->drr_flags |= DRR_FLAG_CLONE;
 if (dsl_dataset_phys(dspp->to_ds)->ds_flags & DS_FLAG_CI_DATASET)
  drrb->drr_flags |= DRR_FLAG_CI_DATA;
 if (zfs_send_set_freerecords_bit)
  drrb->drr_flags |= DRR_FLAG_FREERECORDS;
 drr->drr_u.drr_begin.drr_flags |= DRR_FLAG_SPILL_BLOCK;

 dsl_dataset_name(to_ds, drrb->drr_toname);
 if (!to_ds->ds_is_snapshot) {
  (void) strlcat(drrb->drr_toname, "@--head--",
      sizeof (drrb->drr_toname));
 }
 return (drr);
}
