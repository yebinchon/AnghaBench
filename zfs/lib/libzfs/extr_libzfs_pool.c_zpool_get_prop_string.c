
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int zpool_prop_t ;
struct TYPE_3__ {int * zpool_props; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int ZPROP_SOURCE ;
 int ZPROP_SRC_DEFAULT ;
 int ZPROP_VALUE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int verify (int) ;
 scalar_t__ zpool_prop_default_string (int ) ;
 int zpool_prop_to_name (int ) ;

__attribute__((used)) static const char *
zpool_get_prop_string(zpool_handle_t *zhp, zpool_prop_t prop,
    zprop_source_t *src)
{
 nvlist_t *nv, *nvl;
 uint64_t ival;
 char *value;
 zprop_source_t source;

 nvl = zhp->zpool_props;
 if (nvlist_lookup_nvlist(nvl, zpool_prop_to_name(prop), &nv) == 0) {
  verify(nvlist_lookup_uint64(nv, ZPROP_SOURCE, &ival) == 0);
  source = ival;
  verify(nvlist_lookup_string(nv, ZPROP_VALUE, &value) == 0);
 } else {
  source = ZPROP_SRC_DEFAULT;
  if ((value = (char *)zpool_prop_default_string(prop)) == ((void*)0))
   value = "-";
 }

 if (src)
  *src = source;

 return (value);
}
