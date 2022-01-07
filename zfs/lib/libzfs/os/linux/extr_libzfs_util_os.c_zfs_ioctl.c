
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_cmd_t ;
struct TYPE_3__ {int libzfs_fd; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int ioctl (int ,int,int *) ;

int
zfs_ioctl(libzfs_handle_t *hdl, int request, zfs_cmd_t *zc)
{
 return (ioctl(hdl->libzfs_fd, request, zc));
}
