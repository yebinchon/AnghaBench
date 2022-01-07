
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_7__ {int ds_object; int * ds_dbuf; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_buf_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int DMU_BONUS_BLKID ;
 TYPE_2__* dmu_buf_get_user (int *) ;
 int dmu_buf_rele (int *,void*) ;
 scalar_t__ dmu_buf_try_add_ref (int *,int ,int ,int ,void*) ;

boolean_t
dsl_dataset_try_add_ref(dsl_pool_t *dp, dsl_dataset_t *ds, void *tag)
{
 dmu_buf_t *dbuf = ds->ds_dbuf;
 boolean_t result = B_FALSE;

 if (dbuf != ((void*)0) && dmu_buf_try_add_ref(dbuf, dp->dp_meta_objset,
     ds->ds_object, DMU_BONUS_BLKID, tag)) {

  if (ds == dmu_buf_get_user(dbuf))
   result = B_TRUE;
  else
   dmu_buf_rele(dbuf, tag);
 }

 return (result);
}
