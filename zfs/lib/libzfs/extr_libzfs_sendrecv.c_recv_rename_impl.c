
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;


 int DCP_CMD_FORCE_NEW_KEY ;
 int EACCES ;
 int ENOENT ;
 int lzc_change_key (int ,int ,int *,int *,int ) ;
 int lzc_rename (char const*,char const*) ;
 TYPE_1__* recv_open_grand_origin (TYPE_1__*) ;
 int zfs_close (TYPE_1__*) ;

__attribute__((used)) static int
recv_rename_impl(zfs_handle_t *zhp, const char *name, const char *newname)
{
 int err;
 zfs_handle_t *ozhp = ((void*)0);






 err = lzc_rename(name, newname);
 if (err == EACCES) {
  ozhp = recv_open_grand_origin(zhp);
  if (ozhp == ((void*)0)) {
   err = ENOENT;
   goto out;
  }

  err = lzc_change_key(ozhp->zfs_name, DCP_CMD_FORCE_NEW_KEY,
      ((void*)0), ((void*)0), 0);
  if (err != 0)
   goto out;

  err = lzc_rename(name, newname);
 }

out:
 if (ozhp != ((void*)0))
  zfs_close(ozhp);
 return (err);
}
