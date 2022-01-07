
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef scalar_t__ mod_hash_key_t ;



uint_t
mod_hash_byid(void *hash_data, mod_hash_key_t key)
{
 uint_t kval = (uint_t)(uintptr_t)hash_data;
 return ((uint_t)(uintptr_t)key * (uint_t)kval);
}
