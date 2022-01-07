
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EBUSY ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int EPIPE ;
 char* MNTTYPE_ZFS ;
 int MOUNT_BUSY ;
 int MOUNT_FILEIO ;
 int MOUNT_SOFTWARE ;
 int MOUNT_SYSERR ;
 int MOUNT_USAGE ;
 int MOUNT_USER ;
 int STDERR_VERBOSE ;
 int STDOUT_VERBOSE ;
 int libzfs_run_process (char*,char**,int) ;

int
do_mount(const char *src, const char *mntpt, char *opts, int flags)
{
 char *argv[9] = {
     "/bin/mount",
     "--no-canonicalize",
     "-t", MNTTYPE_ZFS,
     "-o", opts,
     (char *)src,
     (char *)mntpt,
     (char *)((void*)0) };
 int rc;


 rc = libzfs_run_process(argv[0], argv, STDOUT_VERBOSE|STDERR_VERBOSE);
 if (rc) {
  if (rc & MOUNT_FILEIO)
   return (EIO);
  if (rc & MOUNT_USER)
   return (EINTR);
  if (rc & MOUNT_SOFTWARE)
   return (EPIPE);
  if (rc & MOUNT_BUSY)
   return (EBUSY);
  if (rc & MOUNT_SYSERR)
   return (EAGAIN);
  if (rc & MOUNT_USAGE)
   return (EINVAL);

  return (ENXIO);
 }

 return (0);
}
