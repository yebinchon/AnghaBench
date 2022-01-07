
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint8_t ;


 int SHA512_DIGEST_LENGTH ;
 int hkdf_sha512_expand (int *,int *,int ,int *,int ) ;
 int hkdf_sha512_extract (int *,int ,int *,int ,int *) ;

int
hkdf_sha512(uint8_t *key_material, uint_t km_len, uint8_t *salt,
    uint_t salt_len, uint8_t *info, uint_t info_len, uint8_t *output_key,
    uint_t out_len)
{
 int ret;
 uint8_t extract_key[SHA512_DIGEST_LENGTH];

 ret = hkdf_sha512_extract(salt, salt_len, key_material, km_len,
     extract_key);
 if (ret != 0)
  return (ret);

 ret = hkdf_sha512_expand(extract_key, info, info_len, output_key,
     out_len);
 if (ret != 0)
  return (ret);

 return (0);
}
