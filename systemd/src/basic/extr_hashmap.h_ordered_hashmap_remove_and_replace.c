
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedHashmap ;


 int PLAIN_HASHMAP (int *) ;
 int hashmap_remove_and_replace (int ,void const*,void const*,void*) ;

__attribute__((used)) static inline int ordered_hashmap_remove_and_replace(OrderedHashmap *h, const void *old_key, const void *new_key, void *value) {
        return hashmap_remove_and_replace(PLAIN_HASHMAP(h), old_key, new_key, value);
}
