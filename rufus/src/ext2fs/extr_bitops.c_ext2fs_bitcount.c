
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 scalar_t__ popcount32 (int ) ;
 scalar_t__ popcount8 (int ) ;

unsigned int ext2fs_bitcount(const void *addr, unsigned int nbytes)
{
 const unsigned char *cp = addr;
 const __u32 *p;
 unsigned int res = 0;

 while (((((uintptr_t) cp) & 3) != 0) && (nbytes > 0)) {
  res += popcount8(*cp++);
  nbytes--;
 }
 p = (const __u32 *) cp;

 while (nbytes > 4) {
  res += popcount32(*p++);
  nbytes -= 4;
 }
 cp = (const unsigned char *) p;

 while (nbytes > 0) {
  res += popcount8(*cp++);
  nbytes--;
 }
 return res;
}
