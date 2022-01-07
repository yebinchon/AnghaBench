
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int curlen; unsigned char* buf; int* state; } ;
struct hash_state {TYPE_1__ sha512; } ;


 int CONST64 (int) ;
 int STORE64H (int,unsigned char*) ;
 int sha512_compress (struct hash_state*,unsigned char*) ;

__attribute__((used)) static void sha512_done(struct hash_state * md, unsigned char *out)
{
 int i;


 md->sha512.length += md->sha512.curlen * CONST64(8);


 md->sha512.buf[md->sha512.curlen++] = (unsigned char)0x80;




 if (md->sha512.curlen > 112) {
  while (md->sha512.curlen < 128) {
   md->sha512.buf[md->sha512.curlen++] = (unsigned char)0;
  }
  sha512_compress(md, md->sha512.buf);
  md->sha512.curlen = 0;
 }



 while (md->sha512.curlen < 120) {
  md->sha512.buf[md->sha512.curlen++] = (unsigned char)0;
 }


 STORE64H(md->sha512.length, md->sha512.buf + 120);
 sha512_compress(md, md->sha512.buf);


 for (i = 0; i < 8; i++) {
  STORE64H(md->sha512.state[i], out+(8 * i));
 }
}
