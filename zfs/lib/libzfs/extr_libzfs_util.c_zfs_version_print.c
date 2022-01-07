
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zver_userland ;
typedef int zver_kernel ;


 int errno ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 int zfs_version_kernel (char*,int) ;
 int zfs_version_userland (char*,int) ;

int
zfs_version_print(void)
{
 char zver_userland[128];
 char zver_kernel[128];

 if (zfs_version_kernel(zver_kernel, sizeof (zver_kernel)) == -1) {
  fprintf(stderr, "zfs_version_kernel() failed: %s\n",
      strerror(errno));
  return (-1);
 }

 zfs_version_userland(zver_userland, sizeof (zver_userland));

 (void) printf("%s\n", zver_userland);
 (void) printf("zfs-kmod-%s\n", zver_kernel);

 return (0);
}
