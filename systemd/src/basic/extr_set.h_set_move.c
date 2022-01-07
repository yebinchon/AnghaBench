
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_move (int ,int ) ;

__attribute__((used)) static inline int set_move(Set *s, Set *other) {
        return internal_hashmap_move(HASHMAP_BASE(s), HASHMAP_BASE(other));
}
