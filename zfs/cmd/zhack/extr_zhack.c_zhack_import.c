
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
typedef void* boolean_t ;
struct TYPE_3__ {void* can_be_active; } ;


 int B_FALSE ;
 int B_TRUE ;
 int DMU_OST_ZFS ;
 int EEXIST ;
 int FREAD ;
 int FTAG ;
 int FWRITE ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ZFS_IMPORT_NORMAL ;
 int ZFS_IMPORT_SKIP_MMP ;
 int ZPOOL_PROP_READONLY ;
 int dmu_objset_register_type (int ,int ) ;
 int fatal (int *,int ,char*,char*,...) ;
 TYPE_1__ g_importargs ;
 int g_pool ;
 void* g_readonly ;
 int kernel_init (int) ;
 int libzpool_config_ops ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int spa_import (char*,int *,int *,int ) ;
 int space_delta_cb ;
 int strdup (char*) ;
 int strerror (int) ;
 int zfeature_checks_disable ;
 int zpool_find_config (int *,char*,int **,TYPE_1__*,int *) ;
 int zpool_prop_to_name (int ) ;

__attribute__((used)) static void
zhack_import(char *target, boolean_t readonly)
{
 nvlist_t *config;
 nvlist_t *props;
 int error;

 kernel_init(readonly ? FREAD : (FREAD | FWRITE));

 dmu_objset_register_type(DMU_OST_ZFS, space_delta_cb);

 g_readonly = readonly;
 g_importargs.can_be_active = readonly;
 g_pool = strdup(target);

 error = zpool_find_config(((void*)0), target, &config, &g_importargs,
     &libzpool_config_ops);
 if (error)
  fatal(((void*)0), FTAG, "cannot import '%s'", target);

 props = ((void*)0);
 if (readonly) {
  VERIFY(nvlist_alloc(&props, NV_UNIQUE_NAME, 0) == 0);
  VERIFY(nvlist_add_uint64(props,
      zpool_prop_to_name(ZPOOL_PROP_READONLY), 1) == 0);
 }

 zfeature_checks_disable = B_TRUE;
 error = spa_import(target, config, props,
     (readonly ? ZFS_IMPORT_SKIP_MMP : ZFS_IMPORT_NORMAL));
 zfeature_checks_disable = B_FALSE;
 if (error == EEXIST)
  error = 0;

 if (error)
  fatal(((void*)0), FTAG, "can't import '%s': %s", target,
      strerror(error));
}
