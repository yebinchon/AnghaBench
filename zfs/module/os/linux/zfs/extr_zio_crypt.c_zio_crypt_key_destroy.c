
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zk_hmac_tmpl; int zk_current_tmpl; int zk_salt_lock; } ;
typedef TYPE_1__ zio_crypt_key_t ;


 int bzero (TYPE_1__*,int) ;
 int crypto_destroy_ctx_template (int ) ;
 int rw_destroy (int *) ;

void
zio_crypt_key_destroy(zio_crypt_key_t *key)
{
 rw_destroy(&key->zk_salt_lock);


 crypto_destroy_ctx_template(key->zk_current_tmpl);
 crypto_destroy_ctx_template(key->zk_hmac_tmpl);


 bzero(key, sizeof (zio_crypt_key_t));
}
