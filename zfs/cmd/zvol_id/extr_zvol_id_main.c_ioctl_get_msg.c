
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLKZNAME ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ioctl (int,int ,char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
ioctl_get_msg(char *var, int fd)
{
 int error = 0;
 char msg[ZFS_MAX_DATASET_NAME_LEN];

 error = ioctl(fd, BLKZNAME, msg);
 if (error < 0) {
  return (error);
 }

 snprintf(var, ZFS_MAX_DATASET_NAME_LEN, "%s", msg);
 return (error);
}
