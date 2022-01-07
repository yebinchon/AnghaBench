
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int nvlist_t ;


 int VERIFY (int) ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int show_vdev_stats (char*,int ,int *,int ) ;
 scalar_t__ spa_get_stats (int ,int **,int *,int ) ;
 int spa_name (int *) ;

void
show_pool_stats(spa_t *spa)
{
 nvlist_t *config, *nvroot;
 char *name;

 VERIFY(spa_get_stats(spa_name(spa), &config, ((void*)0), 0) == 0);

 VERIFY(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) == 0);
 VERIFY(nvlist_lookup_string(config, ZPOOL_CONFIG_POOL_NAME,
     &name) == 0);

 show_vdev_stats(name, ZPOOL_CONFIG_CHILDREN, nvroot, 0);
 show_vdev_stats(((void*)0), ZPOOL_CONFIG_L2CACHE, nvroot, 0);
 show_vdev_stats(((void*)0), ZPOOL_CONFIG_SPARES, nvroot, 0);

 nvlist_free(config);
}
