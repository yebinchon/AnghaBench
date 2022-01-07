
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ poolguid; int * poolname; } ;
typedef TYPE_1__ target_exists_args_t ;
typedef int nvlist_t ;


 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_NAME ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ strcmp (char*,int *) ;
 int verify (int) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;

__attribute__((used)) static int
name_or_guid_exists(zpool_handle_t *zhp, void *data)
{
 target_exists_args_t *args = data;
 nvlist_t *config = zpool_get_config(zhp, ((void*)0));
 int found = 0;

 if (config == ((void*)0))
  return (0);

 if (args->poolname != ((void*)0)) {
  char *pool_name;

  verify(nvlist_lookup_string(config, ZPOOL_CONFIG_POOL_NAME,
      &pool_name) == 0);
  if (strcmp(pool_name, args->poolname) == 0)
   found = 1;
 } else {
  uint64_t pool_guid;

  verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_GUID,
      &pool_guid) == 0);
  if (pool_guid == args->poolguid)
   found = 1;
 }
 zpool_close(zhp);

 return (found);
}
