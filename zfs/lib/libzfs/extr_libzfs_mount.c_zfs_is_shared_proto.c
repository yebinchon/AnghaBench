
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_share_type_t ;
typedef int zfs_share_proto_t ;
struct TYPE_4__ {int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;


 int SHARED_NOT_SHARED ;
 int free (char*) ;
 int is_shared_impl (int ,char*,int ) ;
 int zfs_is_mounted (TYPE_1__*,char**) ;

zfs_share_type_t
zfs_is_shared_proto(zfs_handle_t *zhp, char **where, zfs_share_proto_t proto)
{
 char *mountpoint;
 zfs_share_type_t rc;

 if (!zfs_is_mounted(zhp, &mountpoint))
  return (SHARED_NOT_SHARED);

 if ((rc = is_shared_impl(zhp->zfs_hdl, mountpoint, proto))
     != SHARED_NOT_SHARED) {
  if (where != ((void*)0))
   *where = mountpoint;
  else
   free(mountpoint);
  return (rc);
 } else {
  free(mountpoint);
  return (SHARED_NOT_SHARED);
 }
}
