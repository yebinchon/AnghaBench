
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int st_dev; } ;
struct mnttab {int dummy; } ;
struct extmnttab {int mnt_minor; int mnt_major; int mnt_mountp; } ;
typedef int FILE ;


 int _sol_getmntent (int *,struct mnttab*) ;
 int major (int ) ;
 int minor (int ) ;
 scalar_t__ stat64 (int ,struct stat64*) ;

__attribute__((used)) static int
getextmntent_impl(FILE *fp, struct extmnttab *mp, int len)
{
 int ret;
 struct stat64 st;

 ret = _sol_getmntent(fp, (struct mnttab *)mp);
 if (ret == 0) {
  if (stat64(mp->mnt_mountp, &st) != 0) {
   mp->mnt_major = 0;
   mp->mnt_minor = 0;
   return (ret);
  }
  mp->mnt_major = major(st.st_dev);
  mp->mnt_minor = minor(st.st_dev);
 }

 return (ret);
}
