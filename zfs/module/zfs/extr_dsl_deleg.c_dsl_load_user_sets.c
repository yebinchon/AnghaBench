
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int gid_t ;
typedef int cred_t ;
typedef int avl_tree_t ;


 int ZFS_DELEG_EVERYONE_SETS ;
 int ZFS_DELEG_GROUP_SETS ;
 int ZFS_DELEG_USER_SETS ;
 int crgetgid (int *) ;
 int * crgetgroups (int *) ;
 int crgetngroups (int *) ;
 int crgetuid (int *) ;
 int dsl_load_sets (int *,int ,int ,char,int *,int *) ;

__attribute__((used)) static void
dsl_load_user_sets(objset_t *mos, uint64_t zapobj, avl_tree_t *avl,
    char checkflag, cred_t *cr)
{
 const gid_t *gids;
 int ngids, i;
 uint64_t id;

 id = crgetuid(cr);
 (void) dsl_load_sets(mos, zapobj,
     ZFS_DELEG_USER_SETS, checkflag, &id, avl);

 id = crgetgid(cr);
 (void) dsl_load_sets(mos, zapobj,
     ZFS_DELEG_GROUP_SETS, checkflag, &id, avl);

 (void) dsl_load_sets(mos, zapobj,
     ZFS_DELEG_EVERYONE_SETS, checkflag, ((void*)0), avl);

 ngids = crgetngroups(cr);
 gids = crgetgroups(cr);
 for (i = 0; i != ngids; i++) {
  id = gids[i];
  (void) dsl_load_sets(mos, zapobj,
      ZFS_DELEG_GROUP_SETS, checkflag, &id, avl);
 }
}
