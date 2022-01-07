
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Iterator ;
typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_iterate (int ,int *,void**,void const**) ;

__attribute__((used)) static inline bool hashmap_iterate(Hashmap *h, Iterator *i, void **value, const void **key) {
        return internal_hashmap_iterate(HASHMAP_BASE(h), i, value, key);
}
