
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnttab {int dummy; } ;
typedef int FILE ;


 scalar_t__ DIFF (int ) ;
 int _sol_getmntent (int *,struct mnttab*) ;
 int mnt_fstype ;
 int mnt_mntopts ;
 int mnt_mountp ;
 int mnt_special ;

int
getmntany(FILE *fp, struct mnttab *mgetp, struct mnttab *mrefp)
{
 int ret;

 while (
     ((ret = _sol_getmntent(fp, mgetp)) == 0) && (
     DIFF(mnt_special) || DIFF(mnt_mountp) ||
     DIFF(mnt_fstype) || DIFF(mnt_mntopts))) { }

 return (ret);
}
