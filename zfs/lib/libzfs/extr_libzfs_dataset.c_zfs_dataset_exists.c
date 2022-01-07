
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_type_t ;
struct TYPE_4__ {int zfs_type; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 TYPE_1__* make_dataset_handle (int *,char const*) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_validate_name (int *,char const*,int,int ) ;

boolean_t
zfs_dataset_exists(libzfs_handle_t *hdl, const char *path, zfs_type_t types)
{
 zfs_handle_t *zhp;

 if (!zfs_validate_name(hdl, path, types, B_FALSE))
  return (B_FALSE);




 if ((zhp = make_dataset_handle(hdl, path)) != ((void*)0)) {
  int ds_type = zhp->zfs_type;

  zfs_close(zhp);
  if (types & ds_type)
   return (B_TRUE);
 }
 return (B_FALSE);
}
