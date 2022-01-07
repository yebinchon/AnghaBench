
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int snapname ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EEXIST ;
 int ENOSPC ;
 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_objset_snapshot_one (char*,char*) ;
 int fatal (int ,char*,char*,char*,int) ;
 int snprintf (char*,int,char*,int ) ;
 int ztest_record_enospc (int ) ;

__attribute__((used)) static boolean_t
ztest_snapshot_create(char *osname, uint64_t id)
{
 char snapname[ZFS_MAX_DATASET_NAME_LEN];
 int error;

 (void) snprintf(snapname, sizeof (snapname), "%llu", (u_longlong_t)id);

 error = dmu_objset_snapshot_one(osname, snapname);
 if (error == ENOSPC) {
  ztest_record_enospc(FTAG);
  return (B_FALSE);
 }
 if (error != 0 && error != EEXIST) {
  fatal(0, "ztest_snapshot_create(%s@%s) = %d", osname,
      snapname, error);
 }
 return (B_TRUE);
}
