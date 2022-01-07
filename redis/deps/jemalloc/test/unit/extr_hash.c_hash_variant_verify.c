
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int hash_variant_t ;


 int KEY_SIZE ;
 int MAX_ALIGN ;
 int hash_variant_verify_key (int ,int *) ;

__attribute__((used)) static void
hash_variant_verify(hash_variant_t variant) {

 uint8_t key[KEY_SIZE + (16 - 1)];
 unsigned i;

 for (i = 0; i < 16; i++) {
  hash_variant_verify_key(variant, &key[i]);
 }

}
