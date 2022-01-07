
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int dummy; } ;
struct extmnttab {char const* mnt_special; int mnt_mountp; int mnt_fstype; } ;


 int MAXPATHLEN ;
 int MNTTYPE_ZFS ;
 int compress_slashes (char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ getextmntent (char*,struct extmnttab*,struct stat64*) ;
 int stderr ;
 scalar_t__ strcmp (int ,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int usage () ;

__attribute__((used)) static int
parse_pathname(const char *inpath, char *dataset, char *relpath,
    struct stat64 *statbuf)
{
 struct extmnttab mp;
 const char *rel;
 char fullpath[MAXPATHLEN];

 compress_slashes(inpath, fullpath);

 if (fullpath[0] != '/') {
  (void) fprintf(stderr, "invalid object '%s': must be full "
      "path\n", fullpath);
  usage();
  return (-1);
 }

 if (getextmntent(fullpath, &mp, statbuf) != 0) {
  (void) fprintf(stderr, "cannot find mountpoint for '%s'\n",
      fullpath);
  return (-1);
 }

 if (strcmp(mp.mnt_fstype, MNTTYPE_ZFS) != 0) {
  (void) fprintf(stderr, "invalid path '%s': not a ZFS "
      "filesystem\n", fullpath);
  return (-1);
 }

 if (strncmp(fullpath, mp.mnt_mountp, strlen(mp.mnt_mountp)) != 0) {
  (void) fprintf(stderr, "invalid path '%s': mountpoint "
      "doesn't match path\n", fullpath);
  return (-1);
 }

 (void) strcpy(dataset, mp.mnt_special);

 rel = fullpath + strlen(mp.mnt_mountp);
 if (rel[0] == '/')
  rel++;
 (void) strcpy(relpath, rel);

 return (0);
}
