
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_contains (int ,void const*) ;

__attribute__((used)) static inline bool set_contains(const Set *s, const void *key) {
        return internal_hashmap_contains(HASHMAP_BASE((Set *) s), key);
}
