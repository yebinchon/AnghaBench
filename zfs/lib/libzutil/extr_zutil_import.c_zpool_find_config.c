
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pool_config_ops_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int importargs_t ;


 int EINVAL ;
 int ENOENT ;
 int VERIFY0 (int ) ;
 int free (char*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int nvpair_value_nvlist (int *,int **) ;
 scalar_t__ pool_match (int *,char*) ;
 char* strdup (char const*) ;
 char* strpbrk (char*,char*) ;
 int * zpool_search_import (void*,int *,int const*) ;

int
zpool_find_config(void *hdl, const char *target, nvlist_t **configp,
    importargs_t *args, const pool_config_ops_t *pco)
{
 nvlist_t *pools;
 nvlist_t *match = ((void*)0);
 nvlist_t *config = ((void*)0);
 char *name = ((void*)0), *sepp = ((void*)0);
 char sep = '\0';
 int count = 0;
 char *targetdup = strdup(target);

 *configp = ((void*)0);

 if ((sepp = strpbrk(targetdup, "/@")) != ((void*)0)) {
  sep = *sepp;
  *sepp = '\0';
 }

 pools = zpool_search_import(hdl, args, pco);

 if (pools != ((void*)0)) {
  nvpair_t *elem = ((void*)0);
  while ((elem = nvlist_next_nvpair(pools, elem)) != ((void*)0)) {
   VERIFY0(nvpair_value_nvlist(elem, &config));
   if (pool_match(config, targetdup)) {
    count++;
    if (match != ((void*)0)) {

     continue;
    } else {
     match = config;
     name = nvpair_name(elem);
    }
   }
  }
 }

 if (count == 0) {
  free(targetdup);
  return (ENOENT);
 }

 if (count > 1) {
  free(targetdup);
  return (EINVAL);
 }

 *configp = match;
 free(targetdup);

 return (0);
}
