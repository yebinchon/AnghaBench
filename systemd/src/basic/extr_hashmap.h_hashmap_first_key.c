
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 void* internal_hashmap_first_key (int ,int) ;

__attribute__((used)) static inline void *hashmap_first_key(Hashmap *h) {
        return internal_hashmap_first_key(HASHMAP_BASE(h), 0);
}
