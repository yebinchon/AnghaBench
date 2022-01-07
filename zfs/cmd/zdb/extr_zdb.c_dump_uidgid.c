
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int objset_t ;


 scalar_t__ B_TRUE ;
 scalar_t__ FUID_INDEX (int ) ;
 int MASTER_NODE_OBJ ;
 int VERIFY (int) ;
 int ZFS_FUID_TABLES ;
 int domain_tree ;
 scalar_t__ fuid_table_loaded ;
 int idx_tree ;
 int print_idstr (int ,char*) ;
 scalar_t__ zap_lookup (int *,int ,int ,int,int,int *) ;
 int zfs_fuid_avl_tree_create (int *,int *) ;
 int zfs_fuid_table_load (int *,int ,int *,int *) ;

__attribute__((used)) static void
dump_uidgid(objset_t *os, uint64_t uid, uint64_t gid)
{
 uint32_t uid_idx, gid_idx;

 uid_idx = FUID_INDEX(uid);
 gid_idx = FUID_INDEX(gid);


 if (!fuid_table_loaded && (uid_idx || gid_idx)) {
  uint64_t fuid_obj;


  VERIFY(zap_lookup(os, MASTER_NODE_OBJ, ZFS_FUID_TABLES,
      8, 1, &fuid_obj) == 0);
  zfs_fuid_avl_tree_create(&idx_tree, &domain_tree);
  (void) zfs_fuid_table_load(os, fuid_obj,
      &idx_tree, &domain_tree);
  fuid_table_loaded = B_TRUE;
 }

 print_idstr(uid, "uid");
 print_idstr(gid, "gid");
}
