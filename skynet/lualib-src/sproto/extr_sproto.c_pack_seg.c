
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static int
pack_seg(const uint8_t *src, uint8_t * buffer, int sz, int n) {
 uint8_t header = 0;
 int notzero = 0;
 int i;
 uint8_t * obuffer = buffer;
 ++buffer;
 --sz;
 if (sz < 0)
  obuffer = ((void*)0);

 for (i=0;i<8;i++) {
  if (src[i] != 0) {
   notzero++;
   header |= 1<<i;
   if (sz > 0) {
    *buffer = src[i];
    ++buffer;
    --sz;
   }
  }
 }
 if ((notzero == 7 || notzero == 6) && n > 0) {
  notzero = 8;
 }
 if (notzero == 8) {
  if (n > 0) {
   return 8;
  } else {
   return 10;
  }
 }
 if (obuffer) {
  *obuffer = header;
 }
 return notzero + 1;
}
