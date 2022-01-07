
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* foldkeys ;
 int lj_rol (int,int) ;
 int memset (int*,int,int) ;
 int nkeys ;

__attribute__((used)) static int tryhash(uint32_t *htab, uint32_t sz, uint32_t r, int dorol)
{
  uint32_t i;
  if (dorol && ((r & 31) == 0 || (r>>5) == 0))
    return 0;
  memset(htab, 0xff, (sz+1)*sizeof(uint32_t));
  for (i = 0; i < nkeys; i++) {
    uint32_t key = foldkeys[i];
    uint32_t k = key & 0xffffff;
    uint32_t h = (dorol ? lj_rol(lj_rol(k, r>>5) - k, r&31) :
     (((k << (r>>5)) - k) << (r&31))) % sz;
    if (htab[h] != 0xffffffff) {
      if (htab[h+1] != 0xffffffff) {

 if (h < sz-1 && htab[h+2] == 0xffffffff) {
   uint32_t k2 = htab[h+1] & 0xffffff;
   uint32_t h2 = (dorol ? lj_rol(lj_rol(k2, r>>5) - k2, r&31) :
     (((k2 << (r>>5)) - k2) << (r&31))) % sz;
   if (h2 != h+1) return 0;
   htab[h+2] = htab[h+1];
 } else {
   return 0;
 }
      }
      htab[h+1] = key;
    } else {
      htab[h] = key;
    }
  }
  return 1;
}
