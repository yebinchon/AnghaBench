
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef scalar_t__ mod_hash_key_t ;



uint_t
mod_hash_byptr(void *hash_data, mod_hash_key_t key)
{
 uintptr_t k = (uintptr_t)key;
 k >>= (int)(uintptr_t)hash_data;

 return ((uint_t)k);
}
