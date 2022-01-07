
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* mnt_osname; void* mnt_data; } ;
typedef TYPE_1__ zfs_mnt_t ;
struct super_block {int s_root; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* ERR_CAST (struct super_block*) ;
 scalar_t__ IS_ERR (struct super_block*) ;
 struct dentry* dget (int ) ;
 struct super_block* zpl_mount_impl (struct file_system_type*,int,TYPE_1__*) ;

__attribute__((used)) static struct dentry *
zpl_mount(struct file_system_type *fs_type, int flags,
    const char *osname, void *data)
{
 zfs_mnt_t zm = { .mnt_osname = osname, .mnt_data = data };

 struct super_block *sb = zpl_mount_impl(fs_type, flags, &zm);
 if (IS_ERR(sb))
  return (ERR_CAST(sb));

 return (dget(sb->s_root));
}
