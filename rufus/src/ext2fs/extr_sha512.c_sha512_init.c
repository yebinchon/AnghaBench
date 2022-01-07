
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** state; scalar_t__ length; scalar_t__ curlen; } ;
struct hash_state {TYPE_1__ sha512; } ;


 void* CONST64 (int) ;

__attribute__((used)) static void sha512_init(struct hash_state * md)
{
 md->sha512.curlen = 0;
 md->sha512.length = 0;
 md->sha512.state[0] = CONST64(0x6a09e667f3bcc908);
 md->sha512.state[1] = CONST64(0xbb67ae8584caa73b);
 md->sha512.state[2] = CONST64(0x3c6ef372fe94f82b);
 md->sha512.state[3] = CONST64(0xa54ff53a5f1d36f1);
 md->sha512.state[4] = CONST64(0x510e527fade682d1);
 md->sha512.state[5] = CONST64(0x9b05688c2b3e6c1f);
 md->sha512.state[6] = CONST64(0x1f83d9abfb41bd6b);
 md->sha512.state[7] = CONST64(0x5be0cd19137e2179);
}
