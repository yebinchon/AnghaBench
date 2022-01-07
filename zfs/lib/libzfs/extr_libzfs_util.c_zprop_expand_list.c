
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pl_next; int pl_all; int pl_fixed; int pl_prop; int pl_width; } ;
typedef TYPE_1__ zprop_list_t ;
typedef int zfs_type_t ;
typedef int libzfs_handle_t ;
struct TYPE_7__ {int type; int * hdl; TYPE_1__** last; } ;
typedef TYPE_2__ expand_data_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZFS_PROP_NAME ;
 int ZFS_TYPE_POOL ;
 int ZPOOL_PROP_NAME ;
 scalar_t__ ZPROP_INVAL ;
 TYPE_1__* zfs_alloc (int *,int) ;
 int zprop_expand_list_cb ;
 scalar_t__ zprop_iter_common (int ,TYPE_2__*,int ,int ,int ) ;
 int zprop_width (int ,int *,int ) ;

int
zprop_expand_list(libzfs_handle_t *hdl, zprop_list_t **plp, zfs_type_t type)
{
 zprop_list_t *entry;
 zprop_list_t **last;
 expand_data_t exp;

 if (*plp == ((void*)0)) {





  last = plp;

  exp.last = last;
  exp.hdl = hdl;
  exp.type = type;

  if (zprop_iter_common(zprop_expand_list_cb, &exp, B_FALSE,
      B_FALSE, type) == ZPROP_INVAL)
   return (-1);





  if ((entry = zfs_alloc(hdl, sizeof (zprop_list_t))) == ((void*)0))
   return (-1);

  entry->pl_prop = (type == ZFS_TYPE_POOL) ? ZPOOL_PROP_NAME :
      ZFS_PROP_NAME;
  entry->pl_width = zprop_width(entry->pl_prop,
      &entry->pl_fixed, type);
  entry->pl_all = B_TRUE;
  entry->pl_next = *plp;
  *plp = entry;
 }
 return (0);
}
