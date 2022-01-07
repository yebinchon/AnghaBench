
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct send_thread_arg {int resume; } ;
struct send_merge_thread_arg {int bookmark_before; } ;
struct redact_list_thread_arg {int resume; } ;
struct TYPE_5__ {int zbm_redaction_obj; } ;
struct dmu_send_params {int resumeobj; int resumeoff; TYPE_1__ ancestor_zb; TYPE_2__* to_ds; } ;
typedef int redaction_list_t ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_6__ {int ds_object; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_7__ {int doi_data_block_size; } ;
typedef TYPE_3__ dmu_object_info_t ;
typedef scalar_t__ boolean_t ;


 int BEGINNV_REDACT_FROM_SNAPS ;
 int BEGINNV_RESUME_OBJECT ;
 int BEGINNV_RESUME_OFFSET ;
 int B_FALSE ;
 int SET_BOOKMARK (int *,int,int,int ,int) ;
 int dmu_object_info (int *,int,TYPE_3__*) ;
 int fnvlist_add_uint64 (int *,int ,int) ;
 scalar_t__ nvlist_exists (int *,int ) ;

__attribute__((used)) static int
setup_resume_points(struct dmu_send_params *dspp,
    struct send_thread_arg *to_arg, struct redact_list_thread_arg *from_arg,
    struct redact_list_thread_arg *rlt_arg,
    struct send_merge_thread_arg *smt_arg, boolean_t resuming, objset_t *os,
    redaction_list_t *redact_rl, nvlist_t *nvl)
{
 dsl_dataset_t *to_ds = dspp->to_ds;
 int err = 0;

 uint64_t obj = 0;
 uint64_t blkid = 0;
 if (resuming) {
  obj = dspp->resumeobj;
  dmu_object_info_t to_doi;
  err = dmu_object_info(os, obj, &to_doi);
  if (err != 0)
   return (err);

  blkid = dspp->resumeoff / to_doi.doi_data_block_size;
 }




 smt_arg->bookmark_before = B_FALSE;
 if (redact_rl != ((void*)0)) {
  SET_BOOKMARK(&rlt_arg->resume, to_ds->ds_object, obj, 0, blkid);
 }

 SET_BOOKMARK(&to_arg->resume, to_ds->ds_object, obj, 0, blkid);
 if (nvlist_exists(nvl, BEGINNV_REDACT_FROM_SNAPS)) {
  uint64_t objset = dspp->ancestor_zb.zbm_redaction_obj;
  SET_BOOKMARK(&from_arg->resume, objset, obj, 0, blkid);
 }
 if (resuming) {
  fnvlist_add_uint64(nvl, BEGINNV_RESUME_OBJECT, dspp->resumeobj);
  fnvlist_add_uint64(nvl, BEGINNV_RESUME_OFFSET, dspp->resumeoff);
 }
 return (0);
}
