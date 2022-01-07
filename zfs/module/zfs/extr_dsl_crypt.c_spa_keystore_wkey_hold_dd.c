
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int sk_wkeys_lock; } ;
struct TYPE_6__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
typedef int dsl_wrapping_key_t ;
typedef int dsl_dir_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int RW_READER ;
 int RW_WRITE_HELD (int *) ;
 int dsl_dir_get_encryption_root_ddobj (int *,int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_keystore_wkey_hold_ddobj_impl (TYPE_2__*,int ,void*,int **) ;

__attribute__((used)) static int
spa_keystore_wkey_hold_dd(spa_t *spa, dsl_dir_t *dd, void *tag,
    dsl_wrapping_key_t **wkey_out)
{
 int ret;
 dsl_wrapping_key_t *wkey;
 uint64_t rddobj;
 boolean_t locked = B_FALSE;

 if (!RW_WRITE_HELD(&spa->spa_keystore.sk_wkeys_lock)) {
  rw_enter(&spa->spa_keystore.sk_wkeys_lock, RW_READER);
  locked = B_TRUE;
 }


 ret = dsl_dir_get_encryption_root_ddobj(dd, &rddobj);
 if (ret != 0)
  goto error;


 ret = spa_keystore_wkey_hold_ddobj_impl(spa, rddobj, tag, &wkey);
 if (ret != 0)
  goto error;


 if (locked)
  rw_exit(&spa->spa_keystore.sk_wkeys_lock);

 *wkey_out = wkey;
 return (0);

error:
 if (locked)
  rw_exit(&spa->spa_keystore.sk_wkeys_lock);

 *wkey_out = ((void*)0);
 return (ret);
}
