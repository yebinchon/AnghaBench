
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* state; } ;
struct hash_state {TYPE_1__ sha512; } ;
typedef scalar_t__ __u64 ;


 scalar_t__ Gamma0 (scalar_t__) ;
 scalar_t__ Gamma1 (scalar_t__) ;
 int LOAD64H (scalar_t__,unsigned char const*) ;
 int RND (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void sha512_compress(struct hash_state * md, const unsigned char *buf)
{
 __u64 S[8], W[80], t0, t1;
 int i;


 for (i = 0; i < 8; i++) {
  S[i] = md->sha512.state[i];
 }


 for (i = 0; i < 16; i++) {
  LOAD64H(W[i], buf + (8*i));
 }


 for (i = 16; i < 80; i++) {
  W[i] = Gamma1(W[i - 2]) + W[i - 7] +
   Gamma0(W[i - 15]) + W[i - 16];
 }

 for (i = 0; i < 80; i += 8) {
  RND(S[0],S[1],S[2],S[3],S[4],S[5],S[6],S[7],i+0);
  RND(S[7],S[0],S[1],S[2],S[3],S[4],S[5],S[6],i+1);
  RND(S[6],S[7],S[0],S[1],S[2],S[3],S[4],S[5],i+2);
  RND(S[5],S[6],S[7],S[0],S[1],S[2],S[3],S[4],i+3);
  RND(S[4],S[5],S[6],S[7],S[0],S[1],S[2],S[3],i+4);
  RND(S[3],S[4],S[5],S[6],S[7],S[0],S[1],S[2],i+5);
  RND(S[2],S[3],S[4],S[5],S[6],S[7],S[0],S[1],i+6);
  RND(S[1],S[2],S[3],S[4],S[5],S[6],S[7],S[0],i+7);
 }


 for (i = 0; i < 8; i++) {
  md->sha512.state[i] = md->sha512.state[i] + S[i];
 }
}
