
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t ext2fs_djb2_hash(const void *str, size_t size)
{
 int c;
 const char *s = str;
 uint32_t hash = 5381;

 while (size-- > 0) {
  c = *s++;
  hash = ((hash << 5) + hash) + c;
 }
 return hash;
}
