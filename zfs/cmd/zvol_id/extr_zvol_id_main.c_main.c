
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int st_rdev; } ;


 int EINVAL ;
 int O_RDONLY ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZVOL_MINORS ;
 int asprintf (char**,char*,char*,...) ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 int ioctl_get_msg (char*,int) ;
 scalar_t__ isblank (char) ;
 int minor (int ) ;
 int open (char*,int ) ;
 int printf (char*,char*) ;
 int stat64 (char*,struct stat64*) ;
 char* strerror (int) ;
 int strlen (char*) ;

int
main(int argc, char **argv)
{
 int fd, error = 0;
 char zvol_name[ZFS_MAX_DATASET_NAME_LEN];
 char *zvol_name_part = ((void*)0);
 char *dev_name;
 struct stat64 statbuf;
 int dev_minor, dev_part;
 int i;
 int rc;

 if (argc < 2) {
  printf("Usage: %s /dev/zvol_device_node\n", argv[0]);
  return (EINVAL);
 }

 dev_name = argv[1];
 error = stat64(dev_name, &statbuf);
 if (error != 0) {
  printf("Unable to access device file: %s\n", dev_name);
  return (errno);
 }

 dev_minor = minor(statbuf.st_rdev);
 dev_part = dev_minor % ZVOL_MINORS;

 fd = open(dev_name, O_RDONLY);
 if (fd < 0) {
  printf("Unable to open device file: %s\n", dev_name);
  return (errno);
 }

 error = ioctl_get_msg(zvol_name, fd);
 if (error < 0) {
  printf("ioctl_get_msg failed:%s\n", strerror(errno));
  return (errno);
 }
 if (dev_part > 0)
  rc = asprintf(&zvol_name_part, "%s-part%d", zvol_name,
      dev_part);
 else
  rc = asprintf(&zvol_name_part, "%s", zvol_name);

 if (rc == -1 || zvol_name_part == ((void*)0))
  goto error;

 for (i = 0; i < strlen(zvol_name_part); i++) {
  if (isblank(zvol_name_part[i]))
   zvol_name_part[i] = '+';
 }

 printf("%s\n", zvol_name_part);
 free(zvol_name_part);
error:
 close(fd);
 return (error);
}
