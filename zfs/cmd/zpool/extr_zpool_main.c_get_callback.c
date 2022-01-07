
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zprop_source_t ;
struct TYPE_4__ {scalar_t__ pl_prop; int pl_user_prop; struct TYPE_4__* pl_next; } ;
typedef TYPE_1__ zprop_list_t ;
struct TYPE_5__ {int cb_literal; TYPE_1__* cb_proplist; } ;
typedef TYPE_2__ zprop_get_cbdata_t ;
typedef int zpool_handle_t ;
typedef int value ;


 int MAXNAMELEN ;
 scalar_t__ ZPOOL_PROP_NAME ;
 scalar_t__ ZPROP_INVAL ;
 int ZPROP_SRC_LOCAL ;
 int zpool_get_name (int *) ;
 scalar_t__ zpool_get_prop (int *,scalar_t__,char*,int,int *,int ) ;
 scalar_t__ zpool_prop_feature (int ) ;
 scalar_t__ zpool_prop_get_feature (int *,int ,char*,int) ;
 int zpool_prop_to_name (scalar_t__) ;
 scalar_t__ zpool_prop_unsupported (int ) ;
 int zprop_print_one_property (int ,TYPE_2__*,int ,char*,int ,int *,int *) ;

__attribute__((used)) static int
get_callback(zpool_handle_t *zhp, void *data)
{
 zprop_get_cbdata_t *cbp = (zprop_get_cbdata_t *)data;
 char value[MAXNAMELEN];
 zprop_source_t srctype;
 zprop_list_t *pl;

 for (pl = cbp->cb_proplist; pl != ((void*)0); pl = pl->pl_next) {





  if (pl->pl_prop == ZPOOL_PROP_NAME &&
      pl == cbp->cb_proplist)
   continue;

  if (pl->pl_prop == ZPROP_INVAL &&
      (zpool_prop_feature(pl->pl_user_prop) ||
      zpool_prop_unsupported(pl->pl_user_prop))) {
   srctype = ZPROP_SRC_LOCAL;

   if (zpool_prop_get_feature(zhp, pl->pl_user_prop,
       value, sizeof (value)) == 0) {
    zprop_print_one_property(zpool_get_name(zhp),
        cbp, pl->pl_user_prop, value, srctype,
        ((void*)0), ((void*)0));
   }
  } else {
   if (zpool_get_prop(zhp, pl->pl_prop, value,
       sizeof (value), &srctype, cbp->cb_literal) != 0)
    continue;

   zprop_print_one_property(zpool_get_name(zhp), cbp,
       zpool_prop_to_name(pl->pl_prop), value, srctype,
       ((void*)0), ((void*)0));
  }
 }
 return (0);
}
