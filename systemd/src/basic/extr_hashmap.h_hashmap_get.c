
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 void* internal_hashmap_get (int ,void const*) ;

__attribute__((used)) static inline void *hashmap_get(Hashmap *h, const void *key) {
        return internal_hashmap_get(HASHMAP_BASE(h), key);
}
