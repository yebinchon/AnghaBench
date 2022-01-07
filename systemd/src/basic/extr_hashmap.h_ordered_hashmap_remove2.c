
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedHashmap ;


 int PLAIN_HASHMAP (int *) ;
 void* hashmap_remove2 (int ,void const*,void**) ;

__attribute__((used)) static inline void *ordered_hashmap_remove2(OrderedHashmap *h, const void *key, void **rkey) {
        return hashmap_remove2(PLAIN_HASHMAP(h), key, rkey);
}
