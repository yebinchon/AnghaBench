
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int uint64_t ;
typedef scalar_t__ pool_state_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int cb_guid; int * cb_zhp; int cb_type; int member_0; } ;
typedef TYPE_1__ aux_cbdata_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;



 int POOL_STATE_POTENTIALLY_ACTIVE ;

 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_IS_SPARE ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int ZPOOL_PROP_READONLY ;
 int find_aux ;
 scalar_t__ find_guid (int *,int) ;
 int no_memory (int *) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int*) ;
 int pool_active (int *,char*,int,scalar_t__*) ;
 int verify (int) ;
 char* zfs_strdup (int *,char*) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;
 scalar_t__ zpool_get_name (int *) ;
 int zpool_get_prop_int (int *,int ,int *) ;
 int zpool_iter (int *,int ,TYPE_1__*) ;
 int * zpool_open_canfail (int *,char*) ;
 scalar_t__ zpool_read_label (int,int **,int *) ;

int
zpool_in_use(libzfs_handle_t *hdl, int fd, pool_state_t *state, char **namestr,
    boolean_t *inuse)
{
 nvlist_t *config;
 char *name;
 boolean_t ret;
 uint64_t guid, vdev_guid;
 zpool_handle_t *zhp;
 nvlist_t *pool_config;
 uint64_t stateval, isspare;
 aux_cbdata_t cb = { 0 };
 boolean_t isactive;

 *inuse = B_FALSE;

 if (zpool_read_label(fd, &config, ((void*)0)) != 0) {
  (void) no_memory(hdl);
  return (-1);
 }

 if (config == ((void*)0))
  return (0);

 verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_STATE,
     &stateval) == 0);
 verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_GUID,
     &vdev_guid) == 0);

 if (stateval != 128 && stateval != 129) {
  verify(nvlist_lookup_string(config, ZPOOL_CONFIG_POOL_NAME,
      &name) == 0);
  verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_GUID,
      &guid) == 0);
 }

 switch (stateval) {
 case 130:






  if (pool_active(hdl, name, guid, &isactive) == 0 && isactive &&
      (zhp = zpool_open_canfail(hdl, name)) != ((void*)0)) {
   if (zpool_get_prop_int(zhp, ZPOOL_PROP_READONLY, ((void*)0)))
    stateval = 131;





   zpool_close(zhp);
  }

  ret = B_TRUE;
  break;

 case 131:







  if (pool_active(hdl, name, guid, &isactive) != 0) {
   nvlist_free(config);
   return (-1);
  }

  if (isactive) {






   if ((zhp = zpool_open_canfail(hdl, name)) != ((void*)0) &&
       (pool_config = zpool_get_config(zhp, ((void*)0)))
       != ((void*)0)) {
    nvlist_t *nvroot;

    verify(nvlist_lookup_nvlist(pool_config,
        ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
    ret = find_guid(nvroot, vdev_guid);
   } else {
    ret = B_FALSE;
   }
   if (ret && nvlist_lookup_uint64(config,
       ZPOOL_CONFIG_IS_SPARE, &isspare) == 0 && isspare)
    stateval = 128;

   if (zhp != ((void*)0))
    zpool_close(zhp);
  } else {
   stateval = POOL_STATE_POTENTIALLY_ACTIVE;
   ret = B_TRUE;
  }
  break;

 case 128:
  cb.cb_zhp = ((void*)0);
  cb.cb_guid = vdev_guid;
  cb.cb_type = ZPOOL_CONFIG_SPARES;
  if (zpool_iter(hdl, find_aux, &cb) == 1) {
   name = (char *)zpool_get_name(cb.cb_zhp);
   ret = B_TRUE;
  } else {
   ret = B_FALSE;
  }
  break;

 case 129:




  cb.cb_zhp = ((void*)0);
  cb.cb_guid = vdev_guid;
  cb.cb_type = ZPOOL_CONFIG_L2CACHE;
  if (zpool_iter(hdl, find_aux, &cb) == 1) {
   name = (char *)zpool_get_name(cb.cb_zhp);
   ret = B_TRUE;
  } else {
   ret = B_FALSE;
  }
  break;

 default:
  ret = B_FALSE;
 }


 if (ret) {
  if ((*namestr = zfs_strdup(hdl, name)) == ((void*)0)) {
   if (cb.cb_zhp)
    zpool_close(cb.cb_zhp);
   nvlist_free(config);
   return (-1);
  }
  *state = (pool_state_t)stateval;
 }

 if (cb.cb_zhp)
  zpool_close(cb.cb_zhp);

 nvlist_free(config);
 *inuse = ret;
 return (0);
}
