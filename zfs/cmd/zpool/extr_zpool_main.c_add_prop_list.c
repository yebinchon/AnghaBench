
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zpool_prop_t ;
typedef int zfs_prop_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int B_FALSE ;
 int NV_UNIQUE_NAME ;
 int ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZPOOL_PROP_CACHEFILE ;
 scalar_t__ ZPOOL_PROP_INVAL ;
 scalar_t__ ZPOOL_PROP_VERSION ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 scalar_t__ nvlist_add_string (int *,char const*,char*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_exists (int *,char const*) ;
 scalar_t__ nvlist_lookup_string (int *,char const*,char**) ;
 scalar_t__ prop_list_contains_feature (int *) ;
 int stderr ;
 int zfs_name_to_prop (char const*) ;
 char* zfs_prop_to_name (int ) ;
 scalar_t__ zfs_prop_user (char const*) ;
 scalar_t__ zfs_prop_userquota (char const*) ;
 scalar_t__ zfs_prop_valid_for_type (int ,int ,int ) ;
 scalar_t__ zpool_name_to_prop (char const*) ;
 scalar_t__ zpool_prop_feature (char const*) ;
 char* zpool_prop_to_name (scalar_t__) ;

__attribute__((used)) static int
add_prop_list(const char *propname, char *propval, nvlist_t **props,
    boolean_t poolprop)
{
 zpool_prop_t prop = ZPOOL_PROP_INVAL;
 nvlist_t *proplist;
 const char *normnm;
 char *strval;

 if (*props == ((void*)0) &&
     nvlist_alloc(props, NV_UNIQUE_NAME, 0) != 0) {
  (void) fprintf(stderr,
      gettext("internal error: out of memory\n"));
  return (1);
 }

 proplist = *props;

 if (poolprop) {
  const char *vname = zpool_prop_to_name(ZPOOL_PROP_VERSION);

  if ((prop = zpool_name_to_prop(propname)) == ZPOOL_PROP_INVAL &&
      !zpool_prop_feature(propname)) {
   (void) fprintf(stderr, gettext("property '%s' is "
       "not a valid pool property\n"), propname);
   return (2);
  }





  if ((prop == ZPOOL_PROP_INVAL && zpool_prop_feature(propname) &&
      nvlist_exists(proplist, vname)) ||
      (prop == ZPOOL_PROP_VERSION &&
      prop_list_contains_feature(proplist))) {
   (void) fprintf(stderr, gettext("'feature@' and "
       "'version' properties cannot be specified "
       "together\n"));
   return (2);
  }


  if (zpool_prop_feature(propname))
   normnm = propname;
  else
   normnm = zpool_prop_to_name(prop);
 } else {
  zfs_prop_t fsprop = zfs_name_to_prop(propname);

  if (zfs_prop_valid_for_type(fsprop, ZFS_TYPE_FILESYSTEM,
      B_FALSE)) {
   normnm = zfs_prop_to_name(fsprop);
  } else if (zfs_prop_user(propname) ||
      zfs_prop_userquota(propname)) {
   normnm = propname;
  } else {
   (void) fprintf(stderr, gettext("property '%s' is "
       "not a valid filesystem property\n"), propname);
   return (2);
  }
 }

 if (nvlist_lookup_string(proplist, normnm, &strval) == 0 &&
     prop != ZPOOL_PROP_CACHEFILE) {
  (void) fprintf(stderr, gettext("property '%s' "
      "specified multiple times\n"), propname);
  return (2);
 }

 if (nvlist_add_string(proplist, normnm, propval) != 0) {
  (void) fprintf(stderr, gettext("internal "
      "error: out of memory\n"));
  return (1);
 }

 return (0);
}
