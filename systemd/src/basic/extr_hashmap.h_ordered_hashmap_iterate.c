
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedHashmap ;
typedef int Iterator ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_iterate (int ,int *,void**,void const**) ;

__attribute__((used)) static inline bool ordered_hashmap_iterate(OrderedHashmap *h, Iterator *i, void **value, const void **key) {
        return internal_hashmap_iterate(HASHMAP_BASE(h), i, value, key);
}
