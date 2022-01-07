
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_6__ {int za_name; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_7__ {scalar_t__ dp_tmp_userrefs_obj; int dp_spa; int * dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;


 int ASSERT (int) ;
 scalar_t__ SPA_VERSION_USERREFS ;
 int dsl_dataset_user_release_tmp (TYPE_2__*,int *) ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ spa_version (int ) ;
 char* strchr (int ,char) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,scalar_t__) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;

void
dsl_pool_clean_tmp_userrefs(dsl_pool_t *dp)
{
 zap_attribute_t za;
 zap_cursor_t zc;
 objset_t *mos = dp->dp_meta_objset;
 uint64_t zapobj = dp->dp_tmp_userrefs_obj;
 nvlist_t *holds;

 if (zapobj == 0)
  return;
 ASSERT(spa_version(dp->dp_spa) >= SPA_VERSION_USERREFS);

 holds = fnvlist_alloc();

 for (zap_cursor_init(&zc, mos, zapobj);
     zap_cursor_retrieve(&zc, &za) == 0;
     zap_cursor_advance(&zc)) {
  char *htag;
  nvlist_t *tags;

  htag = strchr(za.za_name, '-');
  *htag = '\0';
  ++htag;
  if (nvlist_lookup_nvlist(holds, za.za_name, &tags) != 0) {
   tags = fnvlist_alloc();
   fnvlist_add_boolean(tags, htag);
   fnvlist_add_nvlist(holds, za.za_name, tags);
   fnvlist_free(tags);
  } else {
   fnvlist_add_boolean(tags, htag);
  }
 }
 dsl_dataset_user_release_tmp(dp, holds);
 fnvlist_free(holds);
 zap_cursor_fini(&zc);
}
