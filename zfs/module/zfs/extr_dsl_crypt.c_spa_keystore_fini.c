
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sk_dk_lock; int sk_km_lock; int sk_wkeys_lock; int sk_dsl_keys; int sk_key_mappings; int sk_wkeys; } ;
typedef TYPE_1__ spa_keystore_t ;
typedef int dsl_wrapping_key_t ;


 int ASSERT (int ) ;
 int avl_destroy (int *) ;
 int * avl_destroy_nodes (int *,void**) ;
 int avl_is_empty (int *) ;
 int dsl_wrapping_key_free (int *) ;
 int rw_destroy (int *) ;

void
spa_keystore_fini(spa_keystore_t *sk)
{
 dsl_wrapping_key_t *wkey;
 void *cookie = ((void*)0);

 ASSERT(avl_is_empty(&sk->sk_dsl_keys));
 ASSERT(avl_is_empty(&sk->sk_key_mappings));

 while ((wkey = avl_destroy_nodes(&sk->sk_wkeys, &cookie)) != ((void*)0))
  dsl_wrapping_key_free(wkey);

 avl_destroy(&sk->sk_wkeys);
 avl_destroy(&sk->sk_key_mappings);
 avl_destroy(&sk->sk_dsl_keys);
 rw_destroy(&sk->sk_wkeys_lock);
 rw_destroy(&sk->sk_km_lock);
 rw_destroy(&sk->sk_dk_lock);
}
