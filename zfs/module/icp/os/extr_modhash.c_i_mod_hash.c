
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int mh_nchains; int (* mh_hashalg ) (int ,int ) ;int mh_hashalg_data; } ;
typedef TYPE_1__ mod_hash_t ;
typedef int mod_hash_key_t ;


 int stub1 (int ,int ) ;

uint_t
i_mod_hash(mod_hash_t *hash, mod_hash_key_t key)
{
 uint_t h;




 if (hash->mh_nchains == 1)
  return (0);

 h = (hash->mh_hashalg)(hash->mh_hashalg_data, key);
 return (h % (hash->mh_nchains - 1));
}
