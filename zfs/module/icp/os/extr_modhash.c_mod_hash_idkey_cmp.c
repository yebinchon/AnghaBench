
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef scalar_t__ mod_hash_key_t ;



int
mod_hash_idkey_cmp(mod_hash_key_t key1, mod_hash_key_t key2)
{
 return ((uint_t)(uintptr_t)key1 - (uint_t)(uintptr_t)key2);
}
