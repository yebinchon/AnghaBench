
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedHashmap ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_move (int ,int ) ;

__attribute__((used)) static inline int ordered_hashmap_move(OrderedHashmap *h, OrderedHashmap *other) {
        return internal_hashmap_move(HASHMAP_BASE(h), HASHMAP_BASE(other));
}
