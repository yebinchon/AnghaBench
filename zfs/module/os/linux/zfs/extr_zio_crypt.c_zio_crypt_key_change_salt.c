
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t zk_crypt; scalar_t__ zk_salt_count; int zk_salt_lock; int * zk_current_tmpl; int zk_current_key; int zk_salt; int zk_current_keydata; int zk_master_keydata; } ;
typedef TYPE_1__ zio_crypt_key_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef int crypto_mechanism_t ;
struct TYPE_5__ {int ci_keylen; } ;


 int CRYPTO_SUCCESS ;
 int KM_SLEEP ;
 int RW_WRITER ;
 scalar_t__ ZFS_CURRENT_MAX_SALT_USES ;
 int ZIO_DATA_SALT_LEN ;
 int bcopy (int *,int ,int) ;
 int crypto_create_ctx_template (int *,int *,int **,int ) ;
 int crypto_destroy_ctx_template (int *) ;
 int hkdf_sha512 (int ,int ,int *,int ,int *,int,int ,int ) ;
 int random_get_bytes (int *,int) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 TYPE_2__* zio_crypt_table ;

__attribute__((used)) static int
zio_crypt_key_change_salt(zio_crypt_key_t *key)
{
 int ret = 0;
 uint8_t salt[ZIO_DATA_SALT_LEN];
 crypto_mechanism_t mech;
 uint_t keydata_len = zio_crypt_table[key->zk_crypt].ci_keylen;


 ret = random_get_bytes(salt, ZIO_DATA_SALT_LEN);
 if (ret != 0)
  goto error;

 rw_enter(&key->zk_salt_lock, RW_WRITER);


 if (key->zk_salt_count < ZFS_CURRENT_MAX_SALT_USES)
  goto out_unlock;


 ret = hkdf_sha512(key->zk_master_keydata, keydata_len, ((void*)0), 0,
     salt, ZIO_DATA_SALT_LEN, key->zk_current_keydata, keydata_len);
 if (ret != 0)
  goto out_unlock;


 bcopy(salt, key->zk_salt, ZIO_DATA_SALT_LEN);
 key->zk_salt_count = 0;


 crypto_destroy_ctx_template(key->zk_current_tmpl);
 ret = crypto_create_ctx_template(&mech, &key->zk_current_key,
     &key->zk_current_tmpl, KM_SLEEP);
 if (ret != CRYPTO_SUCCESS)
  key->zk_current_tmpl = ((void*)0);

 rw_exit(&key->zk_salt_lock);

 return (0);

out_unlock:
 rw_exit(&key->zk_salt_lock);
error:
 return (ret);
}
