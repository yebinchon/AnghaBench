
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ke8 (int*,int) ;
 int kef8 (int*,int) ;
 int word_in (unsigned char const*,int) ;

__attribute__((used)) static void
aes_encrypt_key256(const unsigned char *key, uint32_t rk[])
{
 uint32_t ss[8];

 rk[0] = ss[0] = word_in(key, 0);
 rk[1] = ss[1] = word_in(key, 1);
 rk[2] = ss[2] = word_in(key, 2);
 rk[3] = ss[3] = word_in(key, 3);
 rk[4] = ss[4] = word_in(key, 4);
 rk[5] = ss[5] = word_in(key, 5);
 rk[6] = ss[6] = word_in(key, 6);
 rk[7] = ss[7] = word_in(key, 7);






 {
  uint32_t i;
  for (i = 0; i < 6; ++i)
   ke8(rk, i);
 }

 kef8(rk, 6);
}
