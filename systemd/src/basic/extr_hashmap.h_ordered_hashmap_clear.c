
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedHashmap ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_clear (int ,int *,int *) ;

__attribute__((used)) static inline void ordered_hashmap_clear(OrderedHashmap *h) {
        internal_hashmap_clear(HASHMAP_BASE(h), ((void*)0), ((void*)0));
}
