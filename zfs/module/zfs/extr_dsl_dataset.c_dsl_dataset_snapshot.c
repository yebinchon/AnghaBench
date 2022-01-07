
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spa_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_3__ {int ddsa_cr; int * ddsa_errors; int * ddsa_props; int * ddsa_snaps; } ;
typedef TYPE_1__ dsl_dataset_snapshot_arg_t ;
typedef int boolean_t ;


 int CRED () ;
 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_FAST_SNAP ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int dsl_dataset_snapshot_check ;
 int dsl_dataset_snapshot_sync ;
 int dsl_sync_task (char*,int ,int ,TYPE_1__*,int,int ) ;
 int fnvlist_add_uint64 (int *,char*,uintptr_t) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int fnvlist_num_pairs (int *) ;
 scalar_t__ fnvpair_value_uint64 (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int spa_close (int *,int ) ;
 int spa_open (char*,int **,int ) ;
 scalar_t__ spa_version (int *) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 int zil_resume (void*) ;
 int zil_suspend (char*,void**) ;

int
dsl_dataset_snapshot(nvlist_t *snaps, nvlist_t *props, nvlist_t *errors)
{
 dsl_dataset_snapshot_arg_t ddsa;
 nvpair_t *pair;
 boolean_t needsuspend;
 int error;
 spa_t *spa;
 char *firstname;
 nvlist_t *suspended = ((void*)0);

 pair = nvlist_next_nvpair(snaps, ((void*)0));
 if (pair == ((void*)0))
  return (0);
 firstname = nvpair_name(pair);

 error = spa_open(firstname, &spa, FTAG);
 if (error != 0)
  return (error);
 needsuspend = (spa_version(spa) < SPA_VERSION_FAST_SNAP);
 spa_close(spa, FTAG);

 if (needsuspend) {
  suspended = fnvlist_alloc();
  for (pair = nvlist_next_nvpair(snaps, ((void*)0)); pair != ((void*)0);
      pair = nvlist_next_nvpair(snaps, pair)) {
   char fsname[ZFS_MAX_DATASET_NAME_LEN];
   char *snapname = nvpair_name(pair);
   char *atp;
   void *cookie;

   atp = strchr(snapname, '@');
   if (atp == ((void*)0)) {
    error = SET_ERROR(EINVAL);
    break;
   }
   (void) strlcpy(fsname, snapname, atp - snapname + 1);

   error = zil_suspend(fsname, &cookie);
   if (error != 0)
    break;
   fnvlist_add_uint64(suspended, fsname,
       (uintptr_t)cookie);
  }
 }

 ddsa.ddsa_snaps = snaps;
 ddsa.ddsa_props = props;
 ddsa.ddsa_errors = errors;
 ddsa.ddsa_cr = CRED();

 if (error == 0) {
  error = dsl_sync_task(firstname, dsl_dataset_snapshot_check,
      dsl_dataset_snapshot_sync, &ddsa,
      fnvlist_num_pairs(snaps) * 3, ZFS_SPACE_CHECK_NORMAL);
 }

 if (suspended != ((void*)0)) {
  for (pair = nvlist_next_nvpair(suspended, ((void*)0)); pair != ((void*)0);
      pair = nvlist_next_nvpair(suspended, pair)) {
   zil_resume((void *)(uintptr_t)
       fnvpair_value_uint64(pair));
  }
  fnvlist_free(suspended);
 }

 return (error);
}
