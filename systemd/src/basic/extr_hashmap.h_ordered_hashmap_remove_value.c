
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedHashmap ;


 int PLAIN_HASHMAP (int *) ;
 void* hashmap_remove_value (int ,void const*,void*) ;

__attribute__((used)) static inline void *ordered_hashmap_remove_value(OrderedHashmap *h, const void *key, void *value) {
        return hashmap_remove_value(PLAIN_HASHMAP(h), key, value);
}
