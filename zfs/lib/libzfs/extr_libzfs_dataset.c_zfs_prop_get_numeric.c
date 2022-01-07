
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int zfs_prop_t ;
struct TYPE_5__ {int zfs_hdl; int zfs_type; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint64_t ;


 int B_FALSE ;
 int EZFS_PROPTYPE ;
 int TEXT_DOMAIN ;
 int ZPROP_SRC_NONE ;
 int dgettext (int ,char*) ;
 scalar_t__ get_numeric_property (TYPE_1__*,int ,int *,char**,int *) ;
 int get_source (TYPE_1__*,int *,char*,char*,size_t) ;
 int zfs_error_fmt (int ,int ,int ,int ) ;
 int zfs_prop_to_name (int ) ;
 int zfs_prop_valid_for_type (int ,int ,int ) ;

int
zfs_prop_get_numeric(zfs_handle_t *zhp, zfs_prop_t prop, uint64_t *value,
    zprop_source_t *src, char *statbuf, size_t statlen)
{
 char *source;




 if (!zfs_prop_valid_for_type(prop, zhp->zfs_type, B_FALSE)) {
  return (zfs_error_fmt(zhp->zfs_hdl, EZFS_PROPTYPE,
      dgettext(TEXT_DOMAIN, "cannot get property '%s'"),
      zfs_prop_to_name(prop)));
 }

 if (src)
  *src = ZPROP_SRC_NONE;

 if (get_numeric_property(zhp, prop, src, &source, value) != 0)
  return (-1);

 get_source(zhp, src, source, statbuf, statlen);

 return (0);
}
