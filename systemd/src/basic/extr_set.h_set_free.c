
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int HASHMAP_BASE (int *) ;
 scalar_t__ internal_hashmap_free (int ,int *,int *) ;

__attribute__((used)) static inline Set *set_free(Set *s) {
        return (Set*) internal_hashmap_free(HASHMAP_BASE(s), ((void*)0), ((void*)0));
}
