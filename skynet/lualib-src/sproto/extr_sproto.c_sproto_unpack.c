
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int*,int const*,int) ;

int
sproto_unpack(const void * srcv, int srcsz, void * bufferv, int bufsz) {
 const uint8_t * src = srcv;
 uint8_t * buffer = bufferv;
 int size = 0;
 while (srcsz > 0) {
  uint8_t header = src[0];
  --srcsz;
  ++src;
  if (header == 0xff) {
   int n;
   if (srcsz < 0) {
    return -1;
   }
   n = (src[0] + 1) * 8;
   if (srcsz < n + 1)
    return -1;
   srcsz -= n + 1;
   ++src;
   if (bufsz >= n) {
    memcpy(buffer, src, n);
   }
   bufsz -= n;
   buffer += n;
   src += n;
   size += n;
  } else {
   int i;
   for (i=0;i<8;i++) {
    int nz = (header >> i) & 1;
    if (nz) {
     if (srcsz < 0)
      return -1;
     if (bufsz > 0) {
      *buffer = *src;
      --bufsz;
      ++buffer;
     }
     ++src;
     --srcsz;
    } else {
     if (bufsz > 0) {
      *buffer = 0;
      --bufsz;
      ++buffer;
     }
    }
    ++size;
   }
  }
 }
 return size;
}
