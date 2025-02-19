
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* Td0 ;
 int* Td1 ;
 int* Td2 ;
 int* Td3 ;
 int* Te4 ;
 int rijndael_key_setup_enc (int*,int const*,int) ;

__attribute__((used)) static int
rijndael_key_setup_dec(uint32_t rk[], const uint32_t cipherKey[], int keyBits)
{
 int Nr, i, j;
 uint32_t temp;


 Nr = rijndael_key_setup_enc(rk, cipherKey, keyBits);


 for (i = 0, j = 4 * Nr; i < j; i += 4, j -= 4) {
  temp = rk[i];
  rk[i] = rk[j];
  rk[j] = temp;
  temp = rk[i + 1];
  rk[i + 1] = rk[j + 1];
  rk[j + 1] = temp;
  temp = rk[i + 2];
  rk[i + 2] = rk[j + 2];
  rk[j + 2] = temp;
  temp = rk[i + 3];
  rk[i + 3] = rk[j + 3];
  rk[j + 3] = temp;
 }





 for (i = 1; i < Nr; i++) {
  rk += 4;
  rk[0] = Td0[Te4[rk[0] >> 24] & 0xff] ^
      Td1[Te4[(rk[0] >> 16) & 0xff] & 0xff] ^
      Td2[Te4[(rk[0] >> 8) & 0xff] & 0xff] ^
      Td3[Te4[rk[0] & 0xff] & 0xff];
  rk[1] = Td0[Te4[rk[1] >> 24] & 0xff] ^
      Td1[Te4[(rk[1] >> 16) & 0xff] & 0xff] ^
      Td2[Te4[(rk[1] >> 8) & 0xff] & 0xff] ^
      Td3[Te4[rk[1] & 0xff] & 0xff];
  rk[2] = Td0[Te4[rk[2] >> 24] & 0xff] ^
      Td1[Te4[(rk[2] >> 16) & 0xff] & 0xff] ^
      Td2[Te4[(rk[2] >> 8) & 0xff] & 0xff] ^
      Td3[Te4[rk[2] & 0xff] & 0xff];
  rk[3] = Td0[Te4[rk[3] >> 24] & 0xff] ^
      Td1[Te4[(rk[3] >> 16) & 0xff] & 0xff] ^
      Td2[Te4[(rk[3] >> 8) & 0xff] & 0xff] ^
      Td3[Te4[rk[3] & 0xff] & 0xff];
 }

 return (Nr);
}
