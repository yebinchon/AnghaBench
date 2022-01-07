
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int T ;


 int R (int) ;
 unsigned int* SHA256_K ;
 scalar_t__ a (int ) ;
 scalar_t__ b (int ) ;
 unsigned int bswap32 (unsigned int) ;
 scalar_t__ c (int ) ;
 scalar_t__ d (int ) ;
 scalar_t__ e (int ) ;
 scalar_t__ f (int ) ;
 scalar_t__ g (int ) ;
 scalar_t__ h (int ) ;
 int isbigendian () ;
 int memcpy (unsigned int*,unsigned int*,int) ;

__attribute__((used)) static void
transform256(unsigned int state[8], unsigned int data[16])
{
 const unsigned int *K = SHA256_K;
 unsigned int W[16];
 unsigned int T[8];
 unsigned int j;


 if (!isbigendian())
  for (j = 0; j < 16; j++)
   data[j] = bswap32(data[j]);


 memcpy(T, state, sizeof(T));


 for (j = 0; j < 64; j += 16) {
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
