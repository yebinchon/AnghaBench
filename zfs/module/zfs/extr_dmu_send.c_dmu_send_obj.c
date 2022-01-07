
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_15__ {int zbm_ivset_guid; int zbm_creation_time; int zbm_creation_txg; int zbm_guid; } ;
struct dmu_send_params {int outfd; int numfromredactsnaps; int is_clone; TYPE_2__* to_ds; int fromredactsnaps; TYPE_1__ ancestor_zb; TYPE_3__* dp; void* rawok; int tag; int * dso; int * off; void* compressok; void* large_block_ok; void* embedok; int member_0; } ;
typedef int offset_t ;
struct TYPE_16__ {scalar_t__ ds_dir; int ds_object; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int ds_hold_flags_t ;
typedef int dmu_send_outparams_t ;
typedef void* boolean_t ;
struct TYPE_18__ {int ds_creation_time; int ds_creation_txg; int ds_guid; } ;
struct TYPE_17__ {int dp_meta_objset; } ;


 int DS_FIELD_IVSET_GUID ;
 int DS_HOLD_FLAG_DECRYPT ;
 int EXDEV ;
 int FTAG ;
 int KM_SLEEP ;
 void* NUM_SNAPS_NOT_REDACTED ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_REDACTED_DATASETS ;
 int bcopy (int*,int ,int) ;
 int dmu_send_impl (struct dmu_send_params*) ;
 int dsl_dataset_get_uint64_array_feature (TYPE_2__*,int ,int*,int**) ;
 int dsl_dataset_hold_obj_flags (TYPE_3__*,int,int ,int ,TYPE_2__**) ;
 int dsl_dataset_is_before (TYPE_2__*,TYPE_2__*,int ) ;
 scalar_t__ dsl_dataset_is_zapified (TYPE_2__*) ;
 TYPE_7__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int dsl_dataset_rele_flags (TYPE_2__*,int ,int ) ;
 int dsl_pool_hold (char const*,int ,TYPE_3__**) ;
 int dsl_pool_rele (TYPE_3__*,int ) ;
 int kmem_zalloc (int,int ) ;
 int zap_lookup (int ,int ,int ,int,int,int *) ;

int
dmu_send_obj(const char *pool, uint64_t tosnap, uint64_t fromsnap,
    boolean_t embedok, boolean_t large_block_ok, boolean_t compressok,
    boolean_t rawok, int outfd, offset_t *off, dmu_send_outparams_t *dsop)
{
 int err;
 dsl_dataset_t *fromds;
 ds_hold_flags_t dsflags = (rawok) ? 0 : DS_HOLD_FLAG_DECRYPT;
 struct dmu_send_params dspp = {0};
 dspp.embedok = embedok;
 dspp.large_block_ok = large_block_ok;
 dspp.compressok = compressok;
 dspp.outfd = outfd;
 dspp.off = off;
 dspp.dso = dsop;
 dspp.tag = FTAG;
 dspp.rawok = rawok;

 err = dsl_pool_hold(pool, FTAG, &dspp.dp);
 if (err != 0)
  return (err);

 err = dsl_dataset_hold_obj_flags(dspp.dp, tosnap, dsflags, FTAG,
     &dspp.to_ds);
 if (err != 0) {
  dsl_pool_rele(dspp.dp, FTAG);
  return (err);
 }

 if (fromsnap != 0) {
  err = dsl_dataset_hold_obj_flags(dspp.dp, fromsnap, dsflags,
      FTAG, &fromds);
  if (err != 0) {
   dsl_dataset_rele_flags(dspp.to_ds, dsflags, FTAG);
   dsl_pool_rele(dspp.dp, FTAG);
   return (err);
  }
  dspp.ancestor_zb.zbm_guid = dsl_dataset_phys(fromds)->ds_guid;
  dspp.ancestor_zb.zbm_creation_txg =
      dsl_dataset_phys(fromds)->ds_creation_txg;
  dspp.ancestor_zb.zbm_creation_time =
      dsl_dataset_phys(fromds)->ds_creation_time;

  if (dsl_dataset_is_zapified(fromds)) {
   (void) zap_lookup(dspp.dp->dp_meta_objset,
       fromds->ds_object, DS_FIELD_IVSET_GUID, 8, 1,
       &dspp.ancestor_zb.zbm_ivset_guid);
  }


  uint64_t *fromredact;

  if (!dsl_dataset_get_uint64_array_feature(fromds,
      SPA_FEATURE_REDACTED_DATASETS,
      &dspp.numfromredactsnaps,
      &fromredact)) {
   dspp.numfromredactsnaps = NUM_SNAPS_NOT_REDACTED;
  } else if (dspp.numfromredactsnaps > 0) {
   uint64_t size = dspp.numfromredactsnaps *
       sizeof (uint64_t);
   dspp.fromredactsnaps = kmem_zalloc(size, KM_SLEEP);
   bcopy(fromredact, dspp.fromredactsnaps, size);
  }

  if (!dsl_dataset_is_before(dspp.to_ds, fromds, 0)) {
   err = SET_ERROR(EXDEV);
  } else {
   dspp.is_clone = (dspp.to_ds->ds_dir !=
       fromds->ds_dir);
   dsl_dataset_rele(fromds, FTAG);
   err = dmu_send_impl(&dspp);
  }
 } else {
  dspp.numfromredactsnaps = NUM_SNAPS_NOT_REDACTED;
  err = dmu_send_impl(&dspp);
 }
 dsl_dataset_rele(dspp.to_ds, FTAG);
 return (err);
}
