
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zc_cookie; int zc_value; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int offset_t ;
struct TYPE_6__ {int f_offset; int f_vnode; } ;
typedef TYPE_2__ file_t ;


 int EBADF ;
 int SET_ERROR (int ) ;
 scalar_t__ VOP_SEEK (int ,int ,int *,int *) ;
 int dmu_diff (int ,int ,int ,int *) ;
 TYPE_2__* getf (int ) ;
 int releasef (int ) ;

__attribute__((used)) static int
zfs_ioc_diff(zfs_cmd_t *zc)
{
 file_t *fp;
 offset_t off;
 int error;

 fp = getf(zc->zc_cookie);
 if (fp == ((void*)0))
  return (SET_ERROR(EBADF));

 off = fp->f_offset;

 error = dmu_diff(zc->zc_name, zc->zc_value, fp->f_vnode, &off);

 if (VOP_SEEK(fp->f_vnode, fp->f_offset, &off, ((void*)0)) == 0)
  fp->f_offset = off;
 releasef(zc->zc_cookie);

 return (error);
}
