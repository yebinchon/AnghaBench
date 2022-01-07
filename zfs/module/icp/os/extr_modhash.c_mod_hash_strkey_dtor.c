
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mod_hash_key_t ;


 int kmem_free (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void
mod_hash_strkey_dtor(mod_hash_key_t key)
{
 char *c = (char *)key;
 kmem_free(c, strlen(c) + 1);
}
