
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dummy; } ;


 struct vfsmount* ERR_PTR (int) ;
 int zfsctl_snapshot_mount (struct path*,int ) ;

__attribute__((used)) static struct vfsmount *
zpl_snapdir_automount(struct path *path)
{
 int error;

 error = -zfsctl_snapshot_mount(path, 0);
 if (error)
  return (ERR_PTR(error));
 return (((void*)0));
}
