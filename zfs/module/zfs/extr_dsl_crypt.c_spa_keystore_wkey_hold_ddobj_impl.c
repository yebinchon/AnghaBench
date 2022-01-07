
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int sk_wkeys; int sk_wkeys_lock; } ;
struct TYPE_10__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_11__ {int wk_ddobj; } ;
typedef TYPE_3__ dsl_wrapping_key_t ;


 int ASSERT (int ) ;
 int ENOENT ;
 int RW_LOCK_HELD (int *) ;
 int SET_ERROR (int ) ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 int dsl_wrapping_key_hold (TYPE_3__*,void*) ;

__attribute__((used)) static int
spa_keystore_wkey_hold_ddobj_impl(spa_t *spa, uint64_t ddobj,
    void *tag, dsl_wrapping_key_t **wkey_out)
{
 int ret;
 dsl_wrapping_key_t search_wkey;
 dsl_wrapping_key_t *found_wkey;

 ASSERT(RW_LOCK_HELD(&spa->spa_keystore.sk_wkeys_lock));


 search_wkey.wk_ddobj = ddobj;


 found_wkey = avl_find(&spa->spa_keystore.sk_wkeys, &search_wkey, ((void*)0));
 if (!found_wkey) {
  ret = SET_ERROR(ENOENT);
  goto error;
 }


 dsl_wrapping_key_hold(found_wkey, tag);

 *wkey_out = found_wkey;
 return (0);

error:
 *wkey_out = ((void*)0);
 return (ret);
}
