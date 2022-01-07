
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int HASHMAP_BASE (int *) ;
 scalar_t__ internal_hashmap_copy (int ) ;

__attribute__((used)) static inline Set *set_copy(Set *s) {
        return (Set*) internal_hashmap_copy(HASHMAP_BASE(s));
}
