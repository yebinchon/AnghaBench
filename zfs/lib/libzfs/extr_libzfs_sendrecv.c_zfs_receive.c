
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zfs_type; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint64_t ;
struct stat {int st_mode; } ;
struct TYPE_9__ {scalar_t__ domount; int nomount; } ;
typedef TYPE_2__ recvflags_t ;
typedef int prop_changelist_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int avl_tree_t ;


 int CL_GATHER_MOUNT_ALWAYS ;
 int ENOENT ;
 int O_EXCL ;
 int O_RDWR ;
 scalar_t__ S_ISFIFO (int ) ;
 int VERIFY (int) ;
 int ZFS_DEV ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 int changelist_free (int *) ;
 int * changelist_gather (TYPE_1__*,int ,int ,int ) ;
 int changelist_postfix (int *) ;
 scalar_t__ close (int) ;
 int free (char*) ;
 int fstat (int,struct stat*) ;
 int libzfs_set_pipe_max (int) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 int open (int ,int) ;
 int perror (char*) ;
 int zfs_close (TYPE_1__*) ;
 TYPE_1__* zfs_open (int *,char*,int) ;
 int zfs_receive_impl (int *,char const*,char*,TYPE_2__*,int,int *,int *,int *,char**,int,int *,int *,int *) ;

int
zfs_receive(libzfs_handle_t *hdl, const char *tosnap, nvlist_t *props,
    recvflags_t *flags, int infd, avl_tree_t *stream_avl)
{
 char *top_zfs = ((void*)0);
 int err;
 int cleanup_fd;
 uint64_t action_handle = 0;
 struct stat sb;
 char *originsnap = ((void*)0);





 if (fstat(infd, &sb) == -1) {
  perror("fstat");
  return (-2);
 }





 if (S_ISFIFO(sb.st_mode))
  libzfs_set_pipe_max(infd);

 if (props) {
  err = nvlist_lookup_string(props, "origin", &originsnap);
  if (err && err != ENOENT)
   return (err);
 }

 cleanup_fd = open(ZFS_DEV, O_RDWR|O_EXCL);
 VERIFY(cleanup_fd >= 0);

 err = zfs_receive_impl(hdl, tosnap, originsnap, flags, infd, ((void*)0), ((void*)0),
     stream_avl, &top_zfs, cleanup_fd, &action_handle, ((void*)0), props);

 VERIFY(0 == close(cleanup_fd));

 if (err == 0 && !flags->nomount && flags->domount && top_zfs) {
  zfs_handle_t *zhp = ((void*)0);
  prop_changelist_t *clp = ((void*)0);

  zhp = zfs_open(hdl, top_zfs,
      ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
  if (zhp == ((void*)0)) {
   err = -1;
   goto out;
  } else {
   if (zhp->zfs_type == ZFS_TYPE_VOLUME) {
    zfs_close(zhp);
    goto out;
   }

   clp = changelist_gather(zhp, ZFS_PROP_MOUNTPOINT,
       CL_GATHER_MOUNT_ALWAYS, 0);
   zfs_close(zhp);
   if (clp == ((void*)0)) {
    err = -1;
    goto out;
   }


   err = changelist_postfix(clp);
   changelist_free(clp);
   if (err != 0)
    err = -1;
  }
 }

out:
 if (top_zfs)
  free(top_zfs);

 return (err);
}
