
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* kmem_asprintf (char*,char const*,char const*) ;
 int kmem_strfree (char*) ;
 int zfs_unmount_snap (char*) ;

__attribute__((used)) static int
recursive_unmount(const char *fsname, void *arg)
{
 const char *snapname = arg;
 char *fullname;

 fullname = kmem_asprintf("%s@%s", fsname, snapname);
 zfs_unmount_snap(fullname);
 kmem_strfree(fullname);

 return (0);
}
