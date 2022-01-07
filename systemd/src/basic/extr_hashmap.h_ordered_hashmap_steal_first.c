
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedHashmap ;


 int HASHMAP_BASE (int *) ;
 void* internal_hashmap_first_key_and_value (int ,int,int *) ;

__attribute__((used)) static inline void *ordered_hashmap_steal_first(OrderedHashmap *h) {
        return internal_hashmap_first_key_and_value(HASHMAP_BASE(h), 1, ((void*)0));
}
