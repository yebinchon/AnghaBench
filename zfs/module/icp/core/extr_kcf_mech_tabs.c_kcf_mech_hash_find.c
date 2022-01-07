
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mod_hash_val_t ;
typedef int mod_hash_key_t ;
typedef scalar_t__ crypto_mech_type_t ;


 int ASSERT (int) ;
 scalar_t__ CRYPTO_MECH_INVALID ;
 int kcf_mech_hash ;
 scalar_t__ mod_hash_find (int ,int ,scalar_t__*) ;

__attribute__((used)) static crypto_mech_type_t
kcf_mech_hash_find(char *mechname)
{
 mod_hash_val_t hv;
 crypto_mech_type_t mt;

 mt = CRYPTO_MECH_INVALID;
 if (mod_hash_find(kcf_mech_hash, (mod_hash_key_t)mechname, &hv) == 0) {
  mt = *(crypto_mech_type_t *)hv;
  ASSERT(mt != CRYPTO_MECH_INVALID);
 }

 return (mt);
}
