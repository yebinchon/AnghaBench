
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mod_hash_key_t ;



int
mod_hash_ptrkey_cmp(mod_hash_key_t key1, mod_hash_key_t key2)
{
 uintptr_t k1 = (uintptr_t)key1;
 uintptr_t k2 = (uintptr_t)key2;
 if (k1 > k2)
  return (-1);
 else if (k1 < k2)
  return (1);
 else
  return (0);
}
