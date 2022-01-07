
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MAX_AES_NB ;
 int d_vars ;
 int ff (int) ;
 int inv_mcol (int) ;
 int k8e (int*,int) ;
 int k8ef (int*,int) ;
 int kd8 (int*,int) ;
 int kdf8 (int*,int ) ;
 int kdl8 (int*,int) ;
 size_t v (int,int) ;
 int word_in (unsigned char const*,int) ;

__attribute__((used)) static void
aes_decrypt_key256(const unsigned char *key, uint32_t rk[])
{
 uint32_t ss[9];



 rk[v(56, (0))] = ss[0] = word_in(key, 0);
 rk[v(56, (1))] = ss[1] = word_in(key, 1);
 rk[v(56, (2))] = ss[2] = word_in(key, 2);
 rk[v(56, (3))] = ss[3] = word_in(key, 3);
 rk[v(56, (4))] = ss[4] = word_in(key, 4);
 rk[v(56, (5))] = ss[5] = word_in(key, 5);
 rk[v(56, (6))] = ss[6] = word_in(key, 6);
 rk[v(56, (7))] = ss[7] = word_in(key, 7);
 {
  uint32_t i;

  for (i = 0; i < 6; ++i)
   k8e(rk, i);
  k8ef(rk, 6);




 }

}
