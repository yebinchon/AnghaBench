
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int HASHMAP_BASE (int *) ;
 void* internal_hashmap_get (int ,void*) ;

__attribute__((used)) static inline void *set_get(const Set *s, void *key) {
        return internal_hashmap_get(HASHMAP_BASE((Set *) s), key);
}
