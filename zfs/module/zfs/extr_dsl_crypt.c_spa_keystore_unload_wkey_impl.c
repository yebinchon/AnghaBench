
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int sk_wkeys_lock; int sk_wkeys; } ;
struct TYPE_10__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_11__ {int wk_refcnt; int wk_ddobj; } ;
typedef TYPE_3__ dsl_wrapping_key_t ;


 int EACCES ;
 int EBUSY ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 int avl_remove (int *,TYPE_3__*) ;
 int dsl_wrapping_key_free (TYPE_3__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ zfs_refcount_count (int *) ;

int
spa_keystore_unload_wkey_impl(spa_t *spa, uint64_t ddobj)
{
 int ret;
 dsl_wrapping_key_t search_wkey;
 dsl_wrapping_key_t *found_wkey;


 search_wkey.wk_ddobj = ddobj;

 rw_enter(&spa->spa_keystore.sk_wkeys_lock, RW_WRITER);


 found_wkey = avl_find(&spa->spa_keystore.sk_wkeys,
     &search_wkey, ((void*)0));
 if (!found_wkey) {
  ret = SET_ERROR(EACCES);
  goto error_unlock;
 } else if (zfs_refcount_count(&found_wkey->wk_refcnt) != 0) {
  ret = SET_ERROR(EBUSY);
  goto error_unlock;
 }
 avl_remove(&spa->spa_keystore.sk_wkeys, found_wkey);

 rw_exit(&spa->spa_keystore.sk_wkeys_lock);


 dsl_wrapping_key_free(found_wkey);

 return (0);

error_unlock:
 rw_exit(&spa->spa_keystore.sk_wkeys_lock);
 return (ret);
}
