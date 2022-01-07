
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnttab {int mnt_mntopts; int mnt_fstype; int mnt_mountp; int mnt_special; } ;
struct mntent {int mnt_opts; int mnt_type; int mnt_dir; int mnt_fsname; } ;
typedef int FILE ;


 int BUFSIZE ;
 int MNT_TOOLONG ;
 int buf ;
 scalar_t__ feof (int *) ;
 struct mntent* getmntent_r (int *,struct mntent*,int ,int ) ;

int
_sol_getmntent(FILE *fp, struct mnttab *mgetp)
{
 struct mntent mntbuf;
 struct mntent *ret;

 ret = getmntent_r(fp, &mntbuf, buf, BUFSIZE);

 if (ret != ((void*)0)) {
  mgetp->mnt_special = mntbuf.mnt_fsname;
  mgetp->mnt_mountp = mntbuf.mnt_dir;
  mgetp->mnt_fstype = mntbuf.mnt_type;
  mgetp->mnt_mntopts = mntbuf.mnt_opts;
  return (0);
 }

 if (feof(fp))
  return (-1);

 return (MNT_TOOLONG);
}
