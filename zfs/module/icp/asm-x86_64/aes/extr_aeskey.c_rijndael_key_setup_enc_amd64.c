
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int aes_encrypt_key128 (unsigned char*,int *) ;
 int aes_encrypt_key192 (unsigned char*,int *) ;
 int aes_encrypt_key256 (unsigned char*,int *) ;

int
rijndael_key_setup_enc_amd64(uint32_t rk[], const uint32_t cipherKey[],
    int keyBits)
{
 switch (keyBits) {
 case 128:
  aes_encrypt_key128((unsigned char *)&cipherKey[0], rk);
  return (10);
 case 192:
  aes_encrypt_key192((unsigned char *)&cipherKey[0], rk);
  return (12);
 case 256:
  aes_encrypt_key256((unsigned char *)&cipherKey[0], rk);
  return (14);
 default:
  break;
 }

 return (0);
}
