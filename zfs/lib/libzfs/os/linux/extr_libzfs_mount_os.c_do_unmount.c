
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* MNTTYPE_ZFS ;
 int MS_DETACH ;
 int MS_FORCE ;
 int STDERR_VERBOSE ;
 int STDOUT_VERBOSE ;
 int libzfs_run_process (char*,char**,int) ;

int
do_unmount(const char *mntpt, int flags)
{
 char force_opt[] = "-f";
 char lazy_opt[] = "-l";
 char *argv[7] = {
     "/bin/umount",
     "-t", MNTTYPE_ZFS,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0) };
 int rc, count = 3;

 if (flags & MS_FORCE) {
  argv[count] = force_opt;
  count++;
 }

 if (flags & MS_DETACH) {
  argv[count] = lazy_opt;
  count++;
 }

 argv[count] = (char *)mntpt;
 rc = libzfs_run_process(argv[0], argv, STDOUT_VERBOSE|STDERR_VERBOSE);

 return (rc ? EINVAL : 0);
}
