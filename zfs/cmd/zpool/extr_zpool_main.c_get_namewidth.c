
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 int MAX (unsigned int,int) ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int max_width (int *,int *,int ,int,int) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 unsigned int strlen (int ) ;
 int verify (int) ;
 int * zpool_get_config (int *,int *) ;
 int zpool_get_name (int *) ;

__attribute__((used)) static int
get_namewidth(zpool_handle_t *zhp, int min_width, int flags, boolean_t verbose)
{
 nvlist_t *config, *nvroot;
 int width = min_width;

 if ((config = zpool_get_config(zhp, ((void*)0))) != ((void*)0)) {
  verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
      &nvroot) == 0);
  unsigned int poolname_len = strlen(zpool_get_name(zhp));
  if (verbose == B_FALSE) {
   width = MAX(poolname_len, min_width);
  } else {
   width = MAX(poolname_len,
       max_width(zhp, nvroot, 0, min_width, flags));
  }
 }

 return (width);
}
