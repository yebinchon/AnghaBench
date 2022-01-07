
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MAX_AES_NB ;
 int d_vars ;
 int ff (int) ;
 int inv_mcol (int) ;
 int k6e (int*,int) ;
 int k6ef (int*,int) ;
 int kd6 (int*,int) ;
 int kdf6 (int*,int ) ;
 int kdl6 (int*,int) ;
 size_t v (int,int) ;
 int word_in (unsigned char const*,int) ;

__attribute__((used)) static void
aes_decrypt_key192(const unsigned char *key, uint32_t rk[])
{
 uint32_t ss[7];



 rk[v(48, (0))] = ss[0] = word_in(key, 0);
 rk[v(48, (1))] = ss[1] = word_in(key, 1);
 rk[v(48, (2))] = ss[2] = word_in(key, 2);
 rk[v(48, (3))] = ss[3] = word_in(key, 3);
 rk[v(48, (4))] = ss[4] = word_in(key, 4);
 rk[v(48, (5))] = ss[5] = word_in(key, 5);
 {
  uint32_t i;

  for (i = 0; i < 7; ++i)
   k6e(rk, i);
  k6ef(rk, 7);




 }

}
