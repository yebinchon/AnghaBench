
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_move_one (int ,int ,void const*) ;

__attribute__((used)) static inline int hashmap_move_one(Hashmap *h, Hashmap *other, const void *key) {
        return internal_hashmap_move_one(HASHMAP_BASE(h), HASHMAP_BASE(other), key);
}
