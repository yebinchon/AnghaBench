
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int T ;


 int R (int) ;
 int * SHA512_K ;
 scalar_t__ a (int ) ;
 scalar_t__ b (int ) ;
 int bswap64 (int ) ;
 scalar_t__ c (int ) ;
 scalar_t__ d (int ) ;
 scalar_t__ e (int ) ;
 scalar_t__ f (int ) ;
 scalar_t__ g (int ) ;
 scalar_t__ h (int ) ;
 int isbigendian () ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
transform512(uint64_t state[8], uint64_t data[16])
{
 const uint64_t *K = SHA512_K;
 uint64_t W[16];
 uint64_t T[8];
 unsigned int j;


 if (!isbigendian())
  for (j = 0; j < 16; j++)
   data[j] = bswap64(data[j]);


 memcpy(T, state, sizeof(T));


 for (j = 0; j < 80; j+= 16) {
  R( 0); R( 1); R( 2); R( 3);
  R( 4); R( 5); R( 6); R( 7);
  R( 8); R( 9); R(10); R(11);
  R(12); R(13); R(14); R(15);
 }


 state[0] += a(0);
 state[1] += b(0);
 state[2] += c(0);
 state[3] += d(0);
 state[4] += e(0);
 state[5] += f(0);
 state[6] += g(0);
 state[7] += h(0);
}
