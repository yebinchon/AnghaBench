
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntonname; int f_mntfromname; } ;
struct stat {int st_mode; } ;
struct mntent {int mnt_dir; int mnt_fsname; } ;
typedef int mbuf ;
typedef int buf ;
typedef int FILE ;


 int MNT_NOWAIT ;
 scalar_t__ S_ISBLK (int ) ;
 int VLC_UNUSED (char*) ;
 int endmntent (int *) ;
 int free (char*) ;
 int getfsstat (struct statfs*,int,int ) ;
 struct mntent* getmntent_r (int *,struct mntent*,char*,int) ;
 scalar_t__ lstat (char*,struct stat*) ;
 char* realpath (char*,int *) ;
 int * setmntent (char*,char*) ;
 int stat (char*,struct stat*) ;
 int strcmp (int ,char*) ;
 char* strdup (int ) ;

__attribute__((used)) static void FindMountPoint(char **file)
{
    char *device = *file;
    VLC_UNUSED( device );

}
