
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_source_t ;
typedef int nvlist_t ;


 int ZPROP_SRC_NONE ;
 int ZPROP_SRC_RECEIVED ;
 scalar_t__ dsl_prop_get_hasrecvd (char const*) ;
 int nvlist_empty (int *) ;
 int nvlist_free (int *) ;
 int props_skip (int *,int *,int **) ;
 int zfs_set_prop_nvlist (char const*,int,int *,int *) ;

__attribute__((used)) static int
clear_received_props(const char *dsname, nvlist_t *props,
    nvlist_t *skipped)
{
 int err = 0;
 nvlist_t *cleared_props = ((void*)0);
 props_skip(props, skipped, &cleared_props);
 if (!nvlist_empty(cleared_props)) {




  zprop_source_t flags = (ZPROP_SRC_NONE |
      (dsl_prop_get_hasrecvd(dsname) ? ZPROP_SRC_RECEIVED : 0));
  err = zfs_set_prop_nvlist(dsname, flags, cleared_props, ((void*)0));
 }
 nvlist_free(cleared_props);
 return (err);
}
