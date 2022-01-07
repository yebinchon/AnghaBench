
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef scalar_t__ mod_hash_key_t ;


 int ASSERT (char*) ;

uint_t
mod_hash_bystr(void *hash_data, mod_hash_key_t key)
{
 uint_t hash = 0;
 uint_t g;
 char *p, *k = (char *)key;

 ASSERT(k);
 for (p = k; *p != '\0'; p++) {
  hash = (hash << 4) + *p;
  if ((g = (hash & 0xf0000000)) != 0) {
   hash ^= (g >> 24);
   hash ^= g;
  }
 }
 return (hash);
}
