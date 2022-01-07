
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_move_one (int ,int ,void const*) ;

__attribute__((used)) static inline int set_move_one(Set *s, Set *other, const void *key) {
        return internal_hashmap_move_one(HASHMAP_BASE(s), HASHMAP_BASE(other), key);
}
