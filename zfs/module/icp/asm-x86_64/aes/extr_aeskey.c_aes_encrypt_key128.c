
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ke4 (int*,int) ;
 int word_in (unsigned char const*,int) ;

__attribute__((used)) static void
aes_encrypt_key128(const unsigned char *key, uint32_t rk[])
{
 uint32_t ss[4];

 rk[0] = ss[0] = word_in(key, 0);
 rk[1] = ss[1] = word_in(key, 1);
 rk[2] = ss[2] = word_in(key, 2);
 rk[3] = ss[3] = word_in(key, 3);
 {
  uint32_t i;
  for (i = 0; i < 9; ++i)
   ke4(rk, i);
 }

 ke4(rk, 9);
}
