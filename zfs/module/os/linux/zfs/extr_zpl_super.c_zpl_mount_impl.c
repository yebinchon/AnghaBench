
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mnt_osname; } ;
typedef TYPE_1__ zfs_mnt_t ;
struct super_block {int s_flags; int * s_root; } ;
struct file_system_type {int dummy; } ;
typedef int objset_t ;


 int EBUSY ;
 struct super_block* ERR_CAST (struct super_block*) ;
 struct super_block* ERR_PTR (int) ;
 int FTAG ;
 scalar_t__ IS_ERR (struct super_block*) ;
 int SB_ACTIVE ;
 int SB_RDONLY ;
 int SB_SILENT ;
 int deactivate_locked_super (struct super_block*) ;
 int dmu_objset_ds (int *) ;
 int dmu_objset_hold (int ,int ,int **) ;
 int dmu_objset_pool (int *) ;
 int dsl_dataset_rele (int ,int ) ;
 int dsl_pool_rele (int ,int ) ;
 int set_anon_super ;
 struct super_block* sget (struct file_system_type*,int ,int ,int,int *) ;
 int zpl_fill_super (struct super_block*,TYPE_1__*,int) ;
 int zpl_test_super ;

__attribute__((used)) static struct super_block *
zpl_mount_impl(struct file_system_type *fs_type, int flags, zfs_mnt_t *zm)
{
 struct super_block *s;
 objset_t *os;
 int err;

 err = dmu_objset_hold(zm->mnt_osname, FTAG, &os);
 if (err)
  return (ERR_PTR(-err));
 dsl_pool_rele(dmu_objset_pool(os), FTAG);
 s = sget(fs_type, zpl_test_super, set_anon_super, flags, os);
 dsl_dataset_rele(dmu_objset_ds(os), FTAG);

 if (IS_ERR(s))
  return (ERR_CAST(s));

 if (s->s_root == ((void*)0)) {
  err = zpl_fill_super(s, zm, flags & SB_SILENT ? 1 : 0);
  if (err) {
   deactivate_locked_super(s);
   return (ERR_PTR(err));
  }
  s->s_flags |= SB_ACTIVE;
 } else if ((flags ^ s->s_flags) & SB_RDONLY) {
  deactivate_locked_super(s);
  return (ERR_PTR(-EBUSY));
 }

 return (s);
}
