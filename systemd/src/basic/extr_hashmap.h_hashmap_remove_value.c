
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 void* internal_hashmap_remove_value (int ,void const*,void*) ;

__attribute__((used)) static inline void *hashmap_remove_value(Hashmap *h, const void *key, void *value) {
        return internal_hashmap_remove_value(HASHMAP_BASE(h), key, value);
}
