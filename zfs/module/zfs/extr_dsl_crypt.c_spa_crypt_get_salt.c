
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_4__ {int dck_key; } ;
typedef TYPE_1__ dsl_crypto_key_t ;


 int FTAG ;
 int spa_keystore_dsl_key_rele (int *,TYPE_1__*,int ) ;
 int spa_keystore_lookup_key (int *,int ,int ,TYPE_1__**) ;
 int zio_crypt_key_get_salt (int *,int *) ;

int
spa_crypt_get_salt(spa_t *spa, uint64_t dsobj, uint8_t *salt)
{
 int ret;
 dsl_crypto_key_t *dck = ((void*)0);


 ret = spa_keystore_lookup_key(spa, dsobj, FTAG, &dck);
 if (ret != 0)
  goto error;

 ret = zio_crypt_key_get_salt(&dck->dck_key, salt);
 if (ret != 0)
  goto error;

 spa_keystore_dsl_key_rele(spa, dck, FTAG);
 return (0);

error:
 if (dck != ((void*)0))
  spa_keystore_dsl_key_rele(spa, dck, FTAG);
 return (ret);
}
