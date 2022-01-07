
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 int pack_seg (scalar_t__ const*,scalar_t__*,int,int) ;
 int write_ff (scalar_t__ const*,scalar_t__*,int) ;

int
sproto_pack(const void * srcv, int srcsz, void * bufferv, int bufsz) {
 uint8_t tmp[8];
 int i;
 const uint8_t * ff_srcstart = ((void*)0);
 uint8_t * ff_desstart = ((void*)0);
 int ff_n = 0;
 int size = 0;
 const uint8_t * src = srcv;
 uint8_t * buffer = bufferv;
 for (i=0;i<srcsz;i+=8) {
  int n;
  int padding = i+8 - srcsz;
  if (padding > 0) {
   int j;
   memcpy(tmp, src, 8-padding);
   for (j=0;j<padding;j++) {
    tmp[7-j] = 0;
   }
   src = tmp;
  }
  n = pack_seg(src, buffer, bufsz, ff_n);
  bufsz -= n;
  if (n == 10) {

   ff_srcstart = src;
   ff_desstart = buffer;
   ff_n = 1;
  } else if (n==8 && ff_n>0) {
   ++ff_n;
   if (ff_n == 256) {
    if (bufsz >= 0) {
     write_ff(ff_srcstart, ff_desstart, 256*8);
    }
    ff_n = 0;
   }
  } else {
   if (ff_n > 0) {
    if (bufsz >= 0) {
     write_ff(ff_srcstart, ff_desstart, ff_n*8);
    }
    ff_n = 0;
   }
  }
  src += 8;
  buffer += n;
  size += n;
 }
 if(bufsz >= 0){
  if(ff_n == 1)
   write_ff(ff_srcstart, ff_desstart, 8);
  else if (ff_n > 1)
   write_ff(ff_srcstart, ff_desstart, srcsz - (intptr_t)(ff_srcstart - (const uint8_t*)srcv));
 }
 return size;
}
