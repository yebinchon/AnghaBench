
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int gid_t ;
typedef int cred_t ;


 int EPERM ;
 int SET_ERROR (int ) ;
 int ZFS_DELEG_EVERYONE ;
 int ZFS_DELEG_GROUP ;
 int ZFS_DELEG_USER ;
 int crgetgid (int *) ;
 int* crgetgroups (int *) ;
 int crgetngroups (int *) ;
 int crgetuid (int *) ;
 scalar_t__ dsl_check_access (int *,int,int ,int,int*,char const*) ;

__attribute__((used)) static int
dsl_check_user_access(objset_t *mos, uint64_t zapobj, const char *perm,
    int checkflag, cred_t *cr)
{
 const gid_t *gids;
 int ngids;
 int i;
 uint64_t id;


 id = crgetuid(cr);
 if (dsl_check_access(mos, zapobj,
     ZFS_DELEG_USER, checkflag, &id, perm) == 0)
  return (0);


 id = crgetgid(cr);
 if (dsl_check_access(mos, zapobj,
     ZFS_DELEG_GROUP, checkflag, &id, perm) == 0)
  return (0);


 id = -1;
 if (dsl_check_access(mos, zapobj,
     ZFS_DELEG_EVERYONE, checkflag, &id, perm) == 0)
  return (0);


 ngids = crgetngroups(cr);
 gids = crgetgroups(cr);
 for (i = 0; i != ngids; i++) {
  id = gids[i];
  if (dsl_check_access(mos, zapobj,
      ZFS_DELEG_GROUP, checkflag, &id, perm) == 0)
   return (0);
 }

 return (SET_ERROR(EPERM));
}
