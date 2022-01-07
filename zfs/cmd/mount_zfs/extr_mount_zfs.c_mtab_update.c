
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntent {char* mnt_fsname; char* mnt_dir; char* mnt_type; char* mnt_opts; scalar_t__ mnt_passno; scalar_t__ mnt_freq; } ;
typedef int FILE ;


 int MOUNT_FILEIO ;
 int MOUNT_SUCCESS ;
 int addmntent (int *,struct mntent*) ;
 int endmntent (int *) ;
 int errno ;
 int fprintf (int ,char*,char*,int) ;
 char* gettext (char*) ;
 int * setmntent (char*,char*) ;
 int stderr ;

__attribute__((used)) static int
mtab_update(char *dataset, char *mntpoint, char *type, char *mntopts)
{
 struct mntent mnt;
 FILE *fp;
 int error;

 mnt.mnt_fsname = dataset;
 mnt.mnt_dir = mntpoint;
 mnt.mnt_type = type;
 mnt.mnt_opts = mntopts ? mntopts : "";
 mnt.mnt_freq = 0;
 mnt.mnt_passno = 0;

 fp = setmntent("/etc/mtab", "a+");
 if (!fp) {
  (void) fprintf(stderr, gettext(
      "filesystem '%s' was mounted, but /etc/mtab "
      "could not be opened due to error %d\n"),
      dataset, errno);
  return (MOUNT_FILEIO);
 }

 error = addmntent(fp, &mnt);
 if (error) {
  (void) fprintf(stderr, gettext(
      "filesystem '%s' was mounted, but /etc/mtab "
      "could not be updated due to error %d\n"),
      dataset, errno);
  return (MOUNT_FILEIO);
 }

 (void) endmntent(fp);

 return (MOUNT_SUCCESS);
}
