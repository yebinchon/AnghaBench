
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int uint_t ;
typedef scalar_t__ uint64_t ;
struct load_time_arg {scalar_t__ lt_guid; TYPE_1__* lt_time; scalar_t__ lt_found; } ;
typedef int nvlist_t ;
struct TYPE_2__ {scalar_t__ ertv_nsec; scalar_t__ ertv_sec; } ;


 scalar_t__ B_TRUE ;
 int ZPOOL_CONFIG_LOADED_TIME ;
 int ZPOOL_PROP_GUID ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,scalar_t__**,int*) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;
 scalar_t__ zpool_get_prop_int (int *,int ,int *) ;

__attribute__((used)) static int
zpool_find_load_time(zpool_handle_t *zhp, void *arg)
{
 struct load_time_arg *lta = arg;
 uint64_t pool_guid;
 uint64_t *tod;
 nvlist_t *config;
 uint_t nelem;

 if (lta->lt_found) {
  zpool_close(zhp);
  return (0);
 }

 pool_guid = zpool_get_prop_int(zhp, ZPOOL_PROP_GUID, ((void*)0));
 if (pool_guid != lta->lt_guid) {
  zpool_close(zhp);
  return (0);
 }

 if ((config = zpool_get_config(zhp, ((void*)0))) == ((void*)0)) {
  zpool_close(zhp);
  return (-1);
 }

 if (nvlist_lookup_uint64_array(config, ZPOOL_CONFIG_LOADED_TIME,
     &tod, &nelem) == 0 && nelem == 2) {
  lta->lt_found = B_TRUE;
  lta->lt_time->ertv_sec = tod[0];
  lta->lt_time->ertv_nsec = tod[1];
 }

 zpool_close(zhp);

 return (0);
}
