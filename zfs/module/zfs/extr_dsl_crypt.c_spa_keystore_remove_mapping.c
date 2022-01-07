
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int sk_km_lock; int sk_key_mappings; } ;
struct TYPE_10__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_11__ {int km_dsobj; } ;
typedef TYPE_3__ dsl_key_mapping_t ;


 int ENOENT ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 int key_mapping_rele (TYPE_2__*,TYPE_3__*,void*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
spa_keystore_remove_mapping(spa_t *spa, uint64_t dsobj, void *tag)
{
 int ret;
 dsl_key_mapping_t search_km;
 dsl_key_mapping_t *found_km;


 search_km.km_dsobj = dsobj;

 rw_enter(&spa->spa_keystore.sk_km_lock, RW_READER);


 found_km = avl_find(&spa->spa_keystore.sk_key_mappings,
     &search_km, ((void*)0));
 if (found_km == ((void*)0)) {
  ret = SET_ERROR(ENOENT);
  goto error_unlock;
 }

 rw_exit(&spa->spa_keystore.sk_km_lock);

 key_mapping_rele(spa, found_km, tag);

 return (0);

error_unlock:
 rw_exit(&spa->spa_keystore.sk_km_lock);
 return (ret);
}
