
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; scalar_t__ zc_guid; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;


 int ZFS_IOC_CLEAR_FAULT ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 int g_zfs ;
 int printf (char*,int) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ zfs_ioctl (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int
cancel_handler(int id)
{
 zfs_cmd_t zc = {"\0"};

 zc.zc_guid = (uint64_t)id;

 if (zfs_ioctl(g_zfs, ZFS_IOC_CLEAR_FAULT, &zc) != 0) {
  (void) fprintf(stderr, "failed to remove handler %d: %s\n",
      id, strerror(errno));
  return (1);
 }

 (void) printf("removed handler %d\n", id);

 return (0);
}
