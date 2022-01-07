
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MAX_AES_NB ;
 int d_vars ;
 int inv_mcol (int) ;
 int k4e (int*,int) ;
 int kd4 (int*,int) ;
 int kdf4 (int*,int ) ;
 int kdl4 (int*,int) ;
 size_t v (int,int) ;
 int word_in (unsigned char const*,int) ;

__attribute__((used)) static void
aes_decrypt_key128(const unsigned char *key, uint32_t rk[])
{
 uint32_t ss[5];



 rk[v(40, (0))] = ss[0] = word_in(key, 0);
 rk[v(40, (1))] = ss[1] = word_in(key, 1);
 rk[v(40, (2))] = ss[2] = word_in(key, 2);
 rk[v(40, (3))] = ss[3] = word_in(key, 3);
 {
  uint32_t i;
  for (i = 0; i < 10; ++i)
   k4e(rk, i);




 }

}
