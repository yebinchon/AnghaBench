
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mod_hash_key_t ;


 int strcmp (char*,char*) ;

int
mod_hash_strkey_cmp(mod_hash_key_t key1, mod_hash_key_t key2)
{
 return (strcmp((char *)key1, (char *)key2));
}
