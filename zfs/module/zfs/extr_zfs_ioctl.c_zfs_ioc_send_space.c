
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ zbm_redaction_obj; scalar_t__ zbm_guid; int zbm_flags; int member_0; } ;
typedef TYPE_1__ zfs_bookmark_phys_t ;
typedef scalar_t__ uint64_t ;
typedef int offset_t ;
typedef int nvlist_t ;
typedef int int32_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_8__ {void* dso_dryrun; scalar_t__* dso_arg; int dso_outfunc; int member_0; } ;
typedef TYPE_2__ dmu_send_outparams_t ;
typedef int boolean_t ;
struct TYPE_9__ {scalar_t__ ds_guid; } ;


 int B_FALSE ;
 void* B_TRUE ;
 int EINVAL ;
 int EXDEV ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int ZBM_FLAG_HAS_FBN ;
 int dmu_send (char const*,char*,int,int,int,int,scalar_t__,scalar_t__,char*,int,int *,TYPE_2__*) ;
 int dmu_send_estimate_fast (int *,int *,TYPE_1__*,int,scalar_t__*) ;
 int dsl_bookmark_lookup (int *,char*,int *,TYPE_1__*) ;
 int dsl_dataset_hold (int *,char const*,int ,int **) ;
 int dsl_dataset_is_before (int *,int *,int ) ;
 TYPE_3__* dsl_dataset_phys (int *) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 int fnvlist_add_uint64 (int *,char*,scalar_t__) ;
 int nvlist_exists (int *,char*) ;
 int nvlist_lookup_int32 (int *,char*,int*) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 int nvlist_lookup_uint64 (int *,char*,scalar_t__*) ;
 int send_space_sum ;
 int * strchr (char*,char) ;

__attribute__((used)) static int
zfs_ioc_send_space(const char *snapname, nvlist_t *innvl, nvlist_t *outnvl)
{
 dsl_pool_t *dp;
 dsl_dataset_t *tosnap;
 dsl_dataset_t *fromsnap = ((void*)0);
 int error;
 char *fromname = ((void*)0);
 char *redactlist_book = ((void*)0);
 boolean_t largeblockok;
 boolean_t embedok;
 boolean_t compressok;
 boolean_t rawok;
 uint64_t space = 0;
 boolean_t full_estimate = B_FALSE;
 uint64_t resumeobj = 0;
 uint64_t resumeoff = 0;
 uint64_t resume_bytes = 0;
 int32_t fd = -1;
 zfs_bookmark_phys_t zbm = {0};

 error = dsl_pool_hold(snapname, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold(dp, snapname, FTAG, &tosnap);
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }
 (void) nvlist_lookup_int32(innvl, "fd", &fd);

 largeblockok = nvlist_exists(innvl, "largeblockok");
 embedok = nvlist_exists(innvl, "embedok");
 compressok = nvlist_exists(innvl, "compressok");
 rawok = nvlist_exists(innvl, "rawok");
 boolean_t from = (nvlist_lookup_string(innvl, "from", &fromname) == 0);
 boolean_t altbook = (nvlist_lookup_string(innvl, "redactbook",
     &redactlist_book) == 0);

 (void) nvlist_lookup_uint64(innvl, "resume_object", &resumeobj);
 (void) nvlist_lookup_uint64(innvl, "resume_offset", &resumeoff);
 (void) nvlist_lookup_uint64(innvl, "bytes", &resume_bytes);

 if (altbook) {
  full_estimate = B_TRUE;
 } else if (from) {
  if (strchr(fromname, '#')) {
   error = dsl_bookmark_lookup(dp, fromname, tosnap, &zbm);
   if (error == EXDEV && zbm.zbm_redaction_obj != 0 &&
       zbm.zbm_guid ==
       dsl_dataset_phys(tosnap)->ds_guid)
    error = 0;

   if (error != 0) {
    dsl_dataset_rele(tosnap, FTAG);
    dsl_pool_rele(dp, FTAG);
    return (error);
   }
   if (zbm.zbm_redaction_obj != 0 || !(zbm.zbm_flags &
       ZBM_FLAG_HAS_FBN)) {
    full_estimate = B_TRUE;
   }
  } else if (strchr(fromname, '@')) {
   error = dsl_dataset_hold(dp, fromname, FTAG, &fromsnap);
   if (error != 0) {
    dsl_dataset_rele(tosnap, FTAG);
    dsl_pool_rele(dp, FTAG);
    return (error);
   }

   if (!dsl_dataset_is_before(tosnap, fromsnap, 0)) {
    full_estimate = B_TRUE;
    dsl_dataset_rele(fromsnap, FTAG);
   }
  } else {




   dsl_dataset_rele(tosnap, FTAG);
   dsl_pool_rele(dp, FTAG);
   return (SET_ERROR(EINVAL));
  }
 }

 if (full_estimate) {
  dmu_send_outparams_t out = {0};
  offset_t off = 0;
  out.dso_outfunc = send_space_sum;
  out.dso_arg = &space;
  out.dso_dryrun = B_TRUE;




  dsl_dataset_rele(tosnap, FTAG);
  dsl_pool_rele(dp, FTAG);
  error = dmu_send(snapname, fromname, embedok, largeblockok,
      compressok, rawok, resumeobj, resumeoff, redactlist_book,
      fd, &off, &out);
 } else {
  error = dmu_send_estimate_fast(tosnap, fromsnap,
      (from && strchr(fromname, '#') != ((void*)0) ? &zbm : ((void*)0)),
      compressok || rawok, &space);
  space -= resume_bytes;
  if (fromsnap != ((void*)0))
   dsl_dataset_rele(fromsnap, FTAG);
  dsl_dataset_rele(tosnap, FTAG);
  dsl_pool_rele(dp, FTAG);
 }

 fnvlist_add_uint64(outnvl, "space", space);

 return (error);
}
