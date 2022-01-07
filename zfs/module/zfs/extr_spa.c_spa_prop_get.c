
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int zpool_prop_t ;
typedef int zap_cursor_t ;
struct TYPE_7__ {int za_integer_length; int za_num_integers; int za_name; int za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
struct TYPE_8__ {scalar_t__ spa_pool_props_object; int spa_props_lock; int * spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int objset_t ;
typedef int nvlist_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int ENOENT ;
 int FTAG ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZPOOL_PROP_BOOTFS ;
 int ZPOOL_PROP_INVAL ;
 int ZPROP_SRC_DEFAULT ;
 int ZPROP_SRC_LOCAL ;
 int dsl_dataset_hold_obj (int *,int ,int ,int **) ;
 int dsl_dataset_name (int *,char*) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_pool_config_enter (int *,int ) ;
 int dsl_pool_config_exit (int *,int ) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int * spa_get_dsl (TYPE_2__*) ;
 int spa_prop_add_list (int *,int ,char*,int ,int ) ;
 int spa_prop_get_config (TYPE_2__*,int **) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,scalar_t__) ;
 int zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_lookup (int *,scalar_t__,int ,int,int ,char*) ;
 int zpool_name_to_prop (int ) ;
 int zpool_prop_default_numeric (int ) ;

int
spa_prop_get(spa_t *spa, nvlist_t **nvp)
{
 objset_t *mos = spa->spa_meta_objset;
 zap_cursor_t zc;
 zap_attribute_t za;
 int err;

 err = nvlist_alloc(nvp, NV_UNIQUE_NAME, KM_SLEEP);
 if (err)
  return (err);

 mutex_enter(&spa->spa_props_lock);




 spa_prop_get_config(spa, nvp);


 if (mos == ((void*)0) || spa->spa_pool_props_object == 0) {
  mutex_exit(&spa->spa_props_lock);
  goto out;
 }




 for (zap_cursor_init(&zc, mos, spa->spa_pool_props_object);
     (err = zap_cursor_retrieve(&zc, &za)) == 0;
     zap_cursor_advance(&zc)) {
  uint64_t intval = 0;
  char *strval = ((void*)0);
  zprop_source_t src = ZPROP_SRC_DEFAULT;
  zpool_prop_t prop;

  if ((prop = zpool_name_to_prop(za.za_name)) == ZPOOL_PROP_INVAL)
   continue;

  switch (za.za_integer_length) {
  case 8:

   if (za.za_first_integer !=
       zpool_prop_default_numeric(prop))
    src = ZPROP_SRC_LOCAL;

   if (prop == ZPOOL_PROP_BOOTFS) {
    dsl_pool_t *dp;
    dsl_dataset_t *ds = ((void*)0);

    dp = spa_get_dsl(spa);
    dsl_pool_config_enter(dp, FTAG);
    err = dsl_dataset_hold_obj(dp,
        za.za_first_integer, FTAG, &ds);
    if (err != 0) {
     dsl_pool_config_exit(dp, FTAG);
     break;
    }

    strval = kmem_alloc(ZFS_MAX_DATASET_NAME_LEN,
        KM_SLEEP);
    dsl_dataset_name(ds, strval);
    dsl_dataset_rele(ds, FTAG);
    dsl_pool_config_exit(dp, FTAG);
   } else {
    strval = ((void*)0);
    intval = za.za_first_integer;
   }

   spa_prop_add_list(*nvp, prop, strval, intval, src);

   if (strval != ((void*)0))
    kmem_free(strval, ZFS_MAX_DATASET_NAME_LEN);

   break;

  case 1:

   strval = kmem_alloc(za.za_num_integers, KM_SLEEP);
   err = zap_lookup(mos, spa->spa_pool_props_object,
       za.za_name, 1, za.za_num_integers, strval);
   if (err) {
    kmem_free(strval, za.za_num_integers);
    break;
   }
   spa_prop_add_list(*nvp, prop, strval, 0, src);
   kmem_free(strval, za.za_num_integers);
   break;

  default:
   break;
  }
 }
 zap_cursor_fini(&zc);
 mutex_exit(&spa->spa_props_lock);
out:
 if (err && err != ENOENT) {
  nvlist_free(*nvp);
  *nvp = ((void*)0);
  return (err);
 }

 return (0);
}
