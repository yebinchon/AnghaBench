
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sk_wkeys_lock; int sk_wkeys; } ;
struct TYPE_5__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
typedef int dsl_wrapping_key_t ;
typedef int avl_index_t ;


 int EEXIST ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int * avl_find (int *,int *,int *) ;
 int avl_insert (int *,int *,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
spa_keystore_load_wkey_impl(spa_t *spa, dsl_wrapping_key_t *wkey)
{
 int ret;
 avl_index_t where;
 dsl_wrapping_key_t *found_wkey;

 rw_enter(&spa->spa_keystore.sk_wkeys_lock, RW_WRITER);


 found_wkey = avl_find(&spa->spa_keystore.sk_wkeys, wkey, &where);
 if (found_wkey != ((void*)0)) {
  ret = SET_ERROR(EEXIST);
  goto error_unlock;
 }
 avl_insert(&spa->spa_keystore.sk_wkeys, wkey, where);

 rw_exit(&spa->spa_keystore.sk_wkeys_lock);

 return (0);

error_unlock:
 rw_exit(&spa->spa_keystore.sk_wkeys_lock);
 return (ret);
}
