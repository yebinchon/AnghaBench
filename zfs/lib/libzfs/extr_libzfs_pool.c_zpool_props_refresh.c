
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * zpool_props; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int nvlist_t ;


 int nvlist_free (int *) ;
 scalar_t__ zpool_get_all_props (TYPE_1__*) ;

int
zpool_props_refresh(zpool_handle_t *zhp)
{
 nvlist_t *old_props;

 old_props = zhp->zpool_props;

 if (zpool_get_all_props(zhp) != 0)
  return (-1);

 nvlist_free(old_props);
 return (0);
}
