
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int ZFS_IOC_DESTROY ;
 int errno ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int strlcpy (char*,char const*,int) ;
 int zfs_fd ;

__attribute__((used)) static int
zfs_destroy(const char *dataset)
{
 zfs_cmd_t zc = {"\0"};
 int err;

 (void) strlcpy(zc.zc_name, dataset, sizeof (zc.zc_name));
 zc.zc_name[sizeof (zc.zc_name) - 1] = '\0';
 err = ioctl(zfs_fd, ZFS_IOC_DESTROY, &zc);

 return (err == 0 ? 0 : errno);
}
