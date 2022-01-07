
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int vnode_t ;
typedef scalar_t__ uint32_t ;
typedef int offset_t ;
typedef int nvlist_t ;
struct TYPE_15__ {scalar_t__ drr_magic; int drr_flags; scalar_t__ drr_fromguid; int drr_versioninfo; } ;
struct TYPE_14__ {TYPE_2__ drr_begin; } ;
struct TYPE_16__ {scalar_t__ drr_payloadlen; TYPE_1__ drr_u; } ;
typedef TYPE_3__ dmu_replay_record_t ;
struct TYPE_17__ {char* drc_tosnap; char* drc_tofs; int drc_featureflags; void* drc_next_rrd; int drc_begin_nvl; TYPE_2__* drc_drrb; void* drc_spill; TYPE_3__* drc_drr_begin; int drc_voff; int * drc_vp; int drc_cksum; void* drc_byteswap; int drc_clone; void* drc_cred; void* drc_resumable; void* drc_force; } ;
typedef TYPE_4__ dmu_recv_cookie_t ;
struct TYPE_18__ {char* drba_origin; int drba_dcp; void* drba_cred; TYPE_4__* drba_cookie; int member_0; } ;
typedef TYPE_5__ dmu_recv_begin_arg_t ;
typedef void* boolean_t ;


 scalar_t__ BSWAP_64 (scalar_t__) ;
 void* B_TRUE ;
 void* CRED () ;
 int DCP_CMD_NONE ;
 int DMU_BACKUP_FEATURE_RAW ;
 int DMU_BACKUP_FEATURE_RESUMING ;
 scalar_t__ DMU_BACKUP_MAGIC ;
 int DMU_GET_FEATUREFLAGS (int ) ;
 int DRR_FLAG_SPILL_BLOCK ;
 int EINVAL ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int byteswap_record (TYPE_3__*) ;
 int bzero (TYPE_4__*,int) ;
 int dmu_recv_begin_check ;
 int dmu_recv_begin_sync ;
 int dmu_recv_resume_begin_check ;
 int dmu_recv_resume_begin_sync ;
 int dsl_crypto_params_create_nvlist (int ,int *,int *,int *) ;
 int dsl_crypto_params_free (int ,int) ;
 int dsl_sync_task (char*,int ,int ,TYPE_5__*,int,int ) ;
 int fletcher_4_incremental_byteswap (TYPE_3__*,int,int *) ;
 int fletcher_4_incremental_native (TYPE_3__*,int,int *) ;
 void* kmem_alloc (scalar_t__,int ) ;
 int kmem_free (void*,int) ;
 int nvlist_free (int ) ;
 int nvlist_unpack (void*,scalar_t__,int *,int ) ;
 int receive_read_payload_and_next_header (TYPE_4__*,scalar_t__,void*) ;

int
dmu_recv_begin(char *tofs, char *tosnap, dmu_replay_record_t *drr_begin,
    boolean_t force, boolean_t resumable, nvlist_t *localprops,
    nvlist_t *hidden_args, char *origin, dmu_recv_cookie_t *drc, vnode_t *vp,
    offset_t *voffp)
{
 dmu_recv_begin_arg_t drba = { 0 };
 int err;

 bzero(drc, sizeof (dmu_recv_cookie_t));
 drc->drc_drr_begin = drr_begin;
 drc->drc_drrb = &drr_begin->drr_u.drr_begin;
 drc->drc_tosnap = tosnap;
 drc->drc_tofs = tofs;
 drc->drc_force = force;
 drc->drc_resumable = resumable;
 drc->drc_cred = CRED();
 drc->drc_clone = (origin != ((void*)0));

 if (drc->drc_drrb->drr_magic == BSWAP_64(DMU_BACKUP_MAGIC)) {
  drc->drc_byteswap = B_TRUE;
  (void) fletcher_4_incremental_byteswap(drr_begin,
      sizeof (dmu_replay_record_t), &drc->drc_cksum);
  byteswap_record(drr_begin);
 } else if (drc->drc_drrb->drr_magic == DMU_BACKUP_MAGIC) {
  (void) fletcher_4_incremental_native(drr_begin,
      sizeof (dmu_replay_record_t), &drc->drc_cksum);
 } else {
  return (SET_ERROR(EINVAL));
 }

 drc->drc_vp = vp;
 drc->drc_voff = *voffp;
 drc->drc_featureflags =
     DMU_GET_FEATUREFLAGS(drc->drc_drrb->drr_versioninfo);

 uint32_t payloadlen = drc->drc_drr_begin->drr_payloadlen;
 void *payload = ((void*)0);
 if (payloadlen != 0)
  payload = kmem_alloc(payloadlen, KM_SLEEP);

 err = receive_read_payload_and_next_header(drc, payloadlen,
     payload);
 if (err != 0) {
  kmem_free(payload, payloadlen);
  return (err);
 }
 if (payloadlen != 0) {
  err = nvlist_unpack(payload, payloadlen, &drc->drc_begin_nvl,
      KM_SLEEP);
  kmem_free(payload, payloadlen);
  if (err != 0) {
   kmem_free(drc->drc_next_rrd,
       sizeof (*drc->drc_next_rrd));
   return (err);
  }
 }

 if (drc->drc_drrb->drr_flags & DRR_FLAG_SPILL_BLOCK)
  drc->drc_spill = B_TRUE;

 drba.drba_origin = origin;
 drba.drba_cookie = drc;
 drba.drba_cred = CRED();

 if (drc->drc_featureflags & DMU_BACKUP_FEATURE_RESUMING) {
  err = dsl_sync_task(tofs,
      dmu_recv_resume_begin_check, dmu_recv_resume_begin_sync,
      &drba, 5, ZFS_SPACE_CHECK_NORMAL);
 } else {
  if ((DMU_GET_FEATUREFLAGS(drc->drc_drrb->drr_versioninfo) &
      DMU_BACKUP_FEATURE_RAW) == 0 &&
      origin == ((void*)0) && drc->drc_drrb->drr_fromguid == 0) {
   err = dsl_crypto_params_create_nvlist(DCP_CMD_NONE,
       localprops, hidden_args, &drba.drba_dcp);
  }

  if (err == 0) {
   err = dsl_sync_task(tofs,
       dmu_recv_begin_check, dmu_recv_begin_sync,
       &drba, 5, ZFS_SPACE_CHECK_NORMAL);
   dsl_crypto_params_free(drba.drba_dcp, !!err);
  }
 }

 if (err != 0) {
  kmem_free(drc->drc_next_rrd, sizeof (*drc->drc_next_rrd));
  nvlist_free(drc->drc_begin_nvl);
 }
 return (err);
}
