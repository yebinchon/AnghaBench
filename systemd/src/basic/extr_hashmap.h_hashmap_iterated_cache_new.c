
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IteratedCache ;
typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 scalar_t__ internal_hashmap_iterated_cache_new (int ) ;

__attribute__((used)) static inline IteratedCache *hashmap_iterated_cache_new(Hashmap *h) {
        return (IteratedCache*) internal_hashmap_iterated_cache_new(HASHMAP_BASE(h));
}
