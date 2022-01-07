
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int zfs_error_fmt (int *,int,char*,char const*) ;

int
zfs_error(libzfs_handle_t *hdl, int error, const char *msg)
{
 return (zfs_error_fmt(hdl, error, "%s", msg));
}
