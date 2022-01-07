
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t zfs_prop_t ;
struct TYPE_3__ {scalar_t__* zfs_props_table; int zfs_props; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvlist_t ;


 scalar_t__ B_TRUE ;
 int ZPROP_SOURCE ;
 int ZPROP_VALUE ;
 char* fnvlist_lookup_string (int *,int ) ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int verify (int) ;
 char* zfs_prop_default_string (size_t) ;
 int zfs_prop_to_name (size_t) ;

__attribute__((used)) static const char *
getprop_string(zfs_handle_t *zhp, zfs_prop_t prop, char **source)
{
 nvlist_t *nv;
 const char *value;

 *source = ((void*)0);
 if (nvlist_lookup_nvlist(zhp->zfs_props,
     zfs_prop_to_name(prop), &nv) == 0) {
  value = fnvlist_lookup_string(nv, ZPROP_VALUE);
  (void) nvlist_lookup_string(nv, ZPROP_SOURCE, source);
 } else {
  verify(!zhp->zfs_props_table ||
      zhp->zfs_props_table[prop] == B_TRUE);
  value = zfs_prop_default_string(prop);
  *source = "";
 }

 return (value);
}
