
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ zc_guid; int zc_flags; scalar_t__ zc_obj; int zc_cookie; int zc_fromobj; int zc_sendobj; int zc_name; int zc_objset_type; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int offset_t ;
struct TYPE_14__ {int f_offset; int f_vnode; } ;
typedef TYPE_2__ file_t ;
typedef int dsl_pool_t ;
struct TYPE_15__ {int ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_16__ {int dso_dryrun; int dso_arg; int dso_outfunc; int member_0; } ;
typedef TYPE_4__ dmu_send_outparams_t ;
typedef int boolean_t ;
struct TYPE_17__ {int dd_origin_obj; } ;


 int B_FALSE ;
 int EBADF ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ VOP_SEEK (int ,int ,int *,int *) ;
 int dmu_send_estimate_fast (TYPE_3__*,TYPE_3__*,int *,int,int *) ;
 int dmu_send_obj (int ,int ,int ,int,int,int,int,int ,int *,TYPE_4__*) ;
 int dsl_dataset_hold_obj (int *,int ,int ,TYPE_3__**) ;
 int dsl_dataset_rele (TYPE_3__*,int ) ;
 scalar_t__ dsl_dir_is_clone (int ) ;
 TYPE_7__* dsl_dir_phys (int ) ;
 int dsl_pool_hold (int ,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 int dump_bytes ;
 TYPE_2__* getf (int ) ;
 int releasef (int ) ;

__attribute__((used)) static int
zfs_ioc_send(zfs_cmd_t *zc)
{
 int error;
 offset_t off;
 boolean_t estimate = (zc->zc_guid != 0);
 boolean_t embedok = (zc->zc_flags & 0x1);
 boolean_t large_block_ok = (zc->zc_flags & 0x2);
 boolean_t compressok = (zc->zc_flags & 0x4);
 boolean_t rawok = (zc->zc_flags & 0x8);

 if (zc->zc_obj != 0) {
  dsl_pool_t *dp;
  dsl_dataset_t *tosnap;

  error = dsl_pool_hold(zc->zc_name, FTAG, &dp);
  if (error != 0)
   return (error);

  error = dsl_dataset_hold_obj(dp, zc->zc_sendobj, FTAG, &tosnap);
  if (error != 0) {
   dsl_pool_rele(dp, FTAG);
   return (error);
  }

  if (dsl_dir_is_clone(tosnap->ds_dir))
   zc->zc_fromobj =
       dsl_dir_phys(tosnap->ds_dir)->dd_origin_obj;
  dsl_dataset_rele(tosnap, FTAG);
  dsl_pool_rele(dp, FTAG);
 }

 if (estimate) {
  dsl_pool_t *dp;
  dsl_dataset_t *tosnap;
  dsl_dataset_t *fromsnap = ((void*)0);

  error = dsl_pool_hold(zc->zc_name, FTAG, &dp);
  if (error != 0)
   return (error);

  error = dsl_dataset_hold_obj(dp, zc->zc_sendobj,
      FTAG, &tosnap);
  if (error != 0) {
   dsl_pool_rele(dp, FTAG);
   return (error);
  }

  if (zc->zc_fromobj != 0) {
   error = dsl_dataset_hold_obj(dp, zc->zc_fromobj,
       FTAG, &fromsnap);
   if (error != 0) {
    dsl_dataset_rele(tosnap, FTAG);
    dsl_pool_rele(dp, FTAG);
    return (error);
   }
  }

  error = dmu_send_estimate_fast(tosnap, fromsnap, ((void*)0),
      compressok || rawok, &zc->zc_objset_type);

  if (fromsnap != ((void*)0))
   dsl_dataset_rele(fromsnap, FTAG);
  dsl_dataset_rele(tosnap, FTAG);
  dsl_pool_rele(dp, FTAG);
 } else {
  file_t *fp = getf(zc->zc_cookie);
  if (fp == ((void*)0))
   return (SET_ERROR(EBADF));

  off = fp->f_offset;
  dmu_send_outparams_t out = {0};
  out.dso_outfunc = dump_bytes;
  out.dso_arg = fp->f_vnode;
  out.dso_dryrun = B_FALSE;
  error = dmu_send_obj(zc->zc_name, zc->zc_sendobj,
      zc->zc_fromobj, embedok, large_block_ok, compressok, rawok,
      zc->zc_cookie, &off, &out);

  if (VOP_SEEK(fp->f_vnode, fp->f_offset, &off, ((void*)0)) == 0)
   fp->f_offset = off;
  releasef(zc->zc_cookie);
 }
 return (error);
}
