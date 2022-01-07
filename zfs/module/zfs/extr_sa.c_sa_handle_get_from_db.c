
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ sa_handle_type_t ;
struct TYPE_14__ {int * dbu_evict_func_async; int * dbu_evict_func_sync; } ;
struct TYPE_12__ {TYPE_9__ sa_dbu; int * sa_spill_tab; int * sa_bonus_tab; int * sa_spill; int * sa_os; int * sa_bonus; void* sa_userp; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int objset_t ;
struct TYPE_13__ {scalar_t__ doi_bonus_type; } ;
typedef TYPE_2__ dmu_object_info_t ;
typedef int dmu_buf_t ;


 int ASSERT (int) ;
 scalar_t__ DMU_OT_SA ;
 scalar_t__ DMU_OT_ZNODE ;
 int KM_SLEEP ;
 int SA_BONUS ;
 scalar_t__ SA_HDL_SHARED ;
 TYPE_1__* dmu_buf_get_user (int *) ;
 int dmu_buf_init_user (TYPE_9__*,int ,int *,int *) ;
 TYPE_1__* dmu_buf_set_user_ie (int *,TYPE_9__*) ;
 int dmu_object_info_from_db (int *,TYPE_2__*) ;
 TYPE_1__* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int sa_build_index (TYPE_1__*,int ) ;
 int sa_cache ;
 int sa_evict_sync ;

int
sa_handle_get_from_db(objset_t *os, dmu_buf_t *db, void *userp,
    sa_handle_type_t hdl_type, sa_handle_t **handlepp)
{
 int error = 0;
 sa_handle_t *handle = ((void*)0);
 if (hdl_type == SA_HDL_SHARED)
  handle = dmu_buf_get_user(db);

 if (handle == ((void*)0)) {
  sa_handle_t *winner = ((void*)0);

  handle = kmem_cache_alloc(sa_cache, KM_SLEEP);
  handle->sa_dbu.dbu_evict_func_sync = ((void*)0);
  handle->sa_dbu.dbu_evict_func_async = ((void*)0);
  handle->sa_userp = userp;
  handle->sa_bonus = db;
  handle->sa_os = os;
  handle->sa_spill = ((void*)0);
  handle->sa_bonus_tab = ((void*)0);
  handle->sa_spill_tab = ((void*)0);

  error = sa_build_index(handle, SA_BONUS);

  if (hdl_type == SA_HDL_SHARED) {
   dmu_buf_init_user(&handle->sa_dbu, sa_evict_sync, ((void*)0),
       ((void*)0));
   winner = dmu_buf_set_user_ie(db, &handle->sa_dbu);
  }

  if (winner != ((void*)0)) {
   kmem_cache_free(sa_cache, handle);
   handle = winner;
  }
 }
 *handlepp = handle;

 return (error);
}
