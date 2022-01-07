
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zprop_source_t ;
typedef int zpool_handle_t ;
typedef size_t uint_t ;
typedef int nvlist_t ;
typedef int fmd_hdl_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int FMD_SLEEP ;
 int VDEV_TYPE_ROOT ;
 int ZPOOL_CONFIG_ASHIFT ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int ZPOOL_PROP_ASHIFT ;
 scalar_t__ ZPROP_SRC_DEFAULT ;
 int basename (char*) ;
 int fmd_hdl_debug (int *,char*,char*,int ) ;
 int * fmd_nvl_alloc (int *,int ) ;
 int free (char*) ;
 int nvlist_add_nvlist_array (int *,int ,int **,int) ;
 int nvlist_add_string (int *,int ,int ) ;
 int nvlist_add_uint64 (int *,int ,int) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int * zpool_get_config (int *,int *) ;
 int zpool_get_prop_int (int *,int ,scalar_t__*) ;
 scalar_t__ zpool_vdev_attach (int *,char*,char*,int *,int ) ;
 char* zpool_vdev_name (int *,int *,int *,int ) ;

__attribute__((used)) static boolean_t
replace_with_spare(fmd_hdl_t *hdl, zpool_handle_t *zhp, nvlist_t *vdev)
{
 nvlist_t *config, *nvroot, *replacement;
 nvlist_t **spares;
 uint_t s, nspares;
 char *dev_name;
 zprop_source_t source;
 int ashift;

 config = zpool_get_config(zhp, ((void*)0));
 if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) != 0)
  return (B_FALSE);




 if (nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_SPARES,
     &spares, &nspares) != 0)
  return (B_FALSE);




 ashift = zpool_get_prop_int(zhp, ZPOOL_PROP_ASHIFT, &source);

 replacement = fmd_nvl_alloc(hdl, FMD_SLEEP);

 (void) nvlist_add_string(replacement, ZPOOL_CONFIG_TYPE,
     VDEV_TYPE_ROOT);

 dev_name = zpool_vdev_name(((void*)0), zhp, vdev, B_FALSE);





 for (s = 0; s < nspares; s++) {
  char *spare_name;

  if (nvlist_lookup_string(spares[s], ZPOOL_CONFIG_PATH,
      &spare_name) != 0)
   continue;


  if (source != ZPROP_SRC_DEFAULT)
   (void) nvlist_add_uint64(spares[s],
       ZPOOL_CONFIG_ASHIFT, ashift);

  (void) nvlist_add_nvlist_array(replacement,
      ZPOOL_CONFIG_CHILDREN, &spares[s], 1);

  fmd_hdl_debug(hdl, "zpool_vdev_replace '%s' with spare '%s'",
      dev_name, basename(spare_name));

  if (zpool_vdev_attach(zhp, dev_name, spare_name,
      replacement, B_TRUE) == 0) {
   free(dev_name);
   nvlist_free(replacement);
   return (B_TRUE);
  }
 }

 free(dev_name);
 nvlist_free(replacement);

 return (B_FALSE);
}
