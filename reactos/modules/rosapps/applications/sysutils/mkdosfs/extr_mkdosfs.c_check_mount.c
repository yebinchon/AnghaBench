
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntent {int mnt_fsname; } ;
typedef int FILE ;


 int MOUNTED ;
 int die (char*) ;
 int endmntent (int *) ;
 struct mntent* getmntent (int *) ;
 int * setmntent (int ,char*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void
check_mount (char *device_name)
{

  FILE *f;
  struct mntent *mnt;

  if ((f = setmntent (MOUNTED, "r")) == ((void*)0))
    return;
  while ((mnt = getmntent (f)) != ((void*)0))
    if (strcmp (device_name, mnt->mnt_fsname) == 0)
      die ("%s contains a mounted file system.");
  endmntent (f);

}
