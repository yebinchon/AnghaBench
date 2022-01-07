
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int HASHMAP_BASE (int *) ;
 void* internal_hashmap_remove (int ,void const*) ;

__attribute__((used)) static inline void *set_remove(Set *s, const void *key) {
        return internal_hashmap_remove(HASHMAP_BASE(s), key);
}
