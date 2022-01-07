
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef int zprop_source_t ;
struct TYPE_21__ {int vdev_state; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_20__ {int sci_dspace; } ;
struct TYPE_22__ {char* spa_comment; char* spa_root; int spa_config_list; TYPE_1__ spa_checkpoint_info; int spa_props_lock; TYPE_5__* spa_dsl_pool; TYPE_2__* spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_23__ {char* scd_path; } ;
typedef TYPE_4__ spa_config_dirent_t ;
typedef int nvlist_t ;
typedef int metaslab_class_t ;
struct TYPE_24__ {int * dp_leak_dir; int * dp_free_dir; } ;
typedef TYPE_5__ dsl_pool_t ;
struct TYPE_19__ {int dd_used_bytes; } ;


 int ASSERT (int ) ;
 int DNODE_MAX_SIZE ;
 int DNODE_MIN_SIZE ;
 scalar_t__ FREAD ;
 int MIN (int ,int ) ;
 int MUTEX_HELD (int *) ;
 int SPA_FEATURE_LARGE_BLOCKS ;
 int SPA_FEATURE_LARGE_DNODE ;
 int SPA_MAXBLOCKSIZE ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int ZPOOL_PROP_ALLOCATED ;
 int ZPOOL_PROP_ALTROOT ;
 int ZPOOL_PROP_CACHEFILE ;
 int ZPOOL_PROP_CAPACITY ;
 int ZPOOL_PROP_CHECKPOINT ;
 int ZPOOL_PROP_COMMENT ;
 int ZPOOL_PROP_DEDUPRATIO ;
 int ZPOOL_PROP_EXPANDSZ ;
 int ZPOOL_PROP_FRAGMENTATION ;
 int ZPOOL_PROP_FREE ;
 int ZPOOL_PROP_FREEING ;
 int ZPOOL_PROP_GUID ;
 int ZPOOL_PROP_HEALTH ;
 int ZPOOL_PROP_LEAKED ;
 int ZPOOL_PROP_LOAD_GUID ;
 int ZPOOL_PROP_MAXBLOCKSIZE ;
 int ZPOOL_PROP_MAXDNODESIZE ;
 int ZPOOL_PROP_NAME ;
 int ZPOOL_PROP_READONLY ;
 int ZPOOL_PROP_SIZE ;
 int ZPOOL_PROP_VERSION ;
 int const ZPROP_SRC_DEFAULT ;
 int const ZPROP_SRC_LOCAL ;
 int const ZPROP_SRC_NONE ;
 int ddt_get_pool_dedup_ratio (TYPE_3__*) ;
 TYPE_17__* dsl_dir_phys (int *) ;
 TYPE_4__* list_head (int *) ;
 int metaslab_class_expandable_space (int *) ;
 int metaslab_class_fragmentation (int *) ;
 int metaslab_class_get_alloc (int *) ;
 int metaslab_class_get_space (int *) ;
 int spa_config_path ;
 int * spa_dedup_class (TYPE_3__*) ;
 scalar_t__ spa_feature_is_enabled (TYPE_3__*,int ) ;
 int spa_guid (TYPE_3__*) ;
 int spa_load_guid (TYPE_3__*) ;
 scalar_t__ spa_mode (TYPE_3__*) ;
 char* spa_name (TYPE_3__*) ;
 int * spa_normal_class (TYPE_3__*) ;
 int spa_prop_add_list (int *,int ,char*,int,int const) ;
 int * spa_special_class (TYPE_3__*) ;
 int spa_version (TYPE_3__*) ;
 scalar_t__ strcmp (char*,int ) ;
 int zfs_max_recordsize ;
 int zpool_prop_default_numeric (int ) ;

__attribute__((used)) static void
spa_prop_get_config(spa_t *spa, nvlist_t **nvp)
{
 vdev_t *rvd = spa->spa_root_vdev;
 dsl_pool_t *pool = spa->spa_dsl_pool;
 uint64_t size, alloc, cap, version;
 const zprop_source_t src = ZPROP_SRC_NONE;
 spa_config_dirent_t *dp;
 metaslab_class_t *mc = spa_normal_class(spa);

 ASSERT(MUTEX_HELD(&spa->spa_props_lock));

 if (rvd != ((void*)0)) {
  alloc = metaslab_class_get_alloc(mc);
  alloc += metaslab_class_get_alloc(spa_special_class(spa));
  alloc += metaslab_class_get_alloc(spa_dedup_class(spa));

  size = metaslab_class_get_space(mc);
  size += metaslab_class_get_space(spa_special_class(spa));
  size += metaslab_class_get_space(spa_dedup_class(spa));

  spa_prop_add_list(*nvp, ZPOOL_PROP_NAME, spa_name(spa), 0, src);
  spa_prop_add_list(*nvp, ZPOOL_PROP_SIZE, ((void*)0), size, src);
  spa_prop_add_list(*nvp, ZPOOL_PROP_ALLOCATED, ((void*)0), alloc, src);
  spa_prop_add_list(*nvp, ZPOOL_PROP_FREE, ((void*)0),
      size - alloc, src);
  spa_prop_add_list(*nvp, ZPOOL_PROP_CHECKPOINT, ((void*)0),
      spa->spa_checkpoint_info.sci_dspace, src);

  spa_prop_add_list(*nvp, ZPOOL_PROP_FRAGMENTATION, ((void*)0),
      metaslab_class_fragmentation(mc), src);
  spa_prop_add_list(*nvp, ZPOOL_PROP_EXPANDSZ, ((void*)0),
      metaslab_class_expandable_space(mc), src);
  spa_prop_add_list(*nvp, ZPOOL_PROP_READONLY, ((void*)0),
      (spa_mode(spa) == FREAD), src);

  cap = (size == 0) ? 0 : (alloc * 100 / size);
  spa_prop_add_list(*nvp, ZPOOL_PROP_CAPACITY, ((void*)0), cap, src);

  spa_prop_add_list(*nvp, ZPOOL_PROP_DEDUPRATIO, ((void*)0),
      ddt_get_pool_dedup_ratio(spa), src);

  spa_prop_add_list(*nvp, ZPOOL_PROP_HEALTH, ((void*)0),
      rvd->vdev_state, src);

  version = spa_version(spa);
  if (version == zpool_prop_default_numeric(ZPOOL_PROP_VERSION)) {
   spa_prop_add_list(*nvp, ZPOOL_PROP_VERSION, ((void*)0),
       version, ZPROP_SRC_DEFAULT);
  } else {
   spa_prop_add_list(*nvp, ZPOOL_PROP_VERSION, ((void*)0),
       version, ZPROP_SRC_LOCAL);
  }
  spa_prop_add_list(*nvp, ZPOOL_PROP_LOAD_GUID,
      ((void*)0), spa_load_guid(spa), src);
 }

 if (pool != ((void*)0)) {




  if (pool->dp_free_dir != ((void*)0)) {
   spa_prop_add_list(*nvp, ZPOOL_PROP_FREEING, ((void*)0),
       dsl_dir_phys(pool->dp_free_dir)->dd_used_bytes,
       src);
  } else {
   spa_prop_add_list(*nvp, ZPOOL_PROP_FREEING,
       ((void*)0), 0, src);
  }

  if (pool->dp_leak_dir != ((void*)0)) {
   spa_prop_add_list(*nvp, ZPOOL_PROP_LEAKED, ((void*)0),
       dsl_dir_phys(pool->dp_leak_dir)->dd_used_bytes,
       src);
  } else {
   spa_prop_add_list(*nvp, ZPOOL_PROP_LEAKED,
       ((void*)0), 0, src);
  }
 }

 spa_prop_add_list(*nvp, ZPOOL_PROP_GUID, ((void*)0), spa_guid(spa), src);

 if (spa->spa_comment != ((void*)0)) {
  spa_prop_add_list(*nvp, ZPOOL_PROP_COMMENT, spa->spa_comment,
      0, ZPROP_SRC_LOCAL);
 }

 if (spa->spa_root != ((void*)0))
  spa_prop_add_list(*nvp, ZPOOL_PROP_ALTROOT, spa->spa_root,
      0, ZPROP_SRC_LOCAL);

 if (spa_feature_is_enabled(spa, SPA_FEATURE_LARGE_BLOCKS)) {
  spa_prop_add_list(*nvp, ZPOOL_PROP_MAXBLOCKSIZE, ((void*)0),
      MIN(zfs_max_recordsize, SPA_MAXBLOCKSIZE), ZPROP_SRC_NONE);
 } else {
  spa_prop_add_list(*nvp, ZPOOL_PROP_MAXBLOCKSIZE, ((void*)0),
      SPA_OLD_MAXBLOCKSIZE, ZPROP_SRC_NONE);
 }

 if (spa_feature_is_enabled(spa, SPA_FEATURE_LARGE_DNODE)) {
  spa_prop_add_list(*nvp, ZPOOL_PROP_MAXDNODESIZE, ((void*)0),
      DNODE_MAX_SIZE, ZPROP_SRC_NONE);
 } else {
  spa_prop_add_list(*nvp, ZPOOL_PROP_MAXDNODESIZE, ((void*)0),
      DNODE_MIN_SIZE, ZPROP_SRC_NONE);
 }

 if ((dp = list_head(&spa->spa_config_list)) != ((void*)0)) {
  if (dp->scd_path == ((void*)0)) {
   spa_prop_add_list(*nvp, ZPOOL_PROP_CACHEFILE,
       "none", 0, ZPROP_SRC_LOCAL);
  } else if (strcmp(dp->scd_path, spa_config_path) != 0) {
   spa_prop_add_list(*nvp, ZPOOL_PROP_CACHEFILE,
       dp->scd_path, 0, ZPROP_SRC_LOCAL);
  }
 }
}
