
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void OrderedHashmap ;


 int HASHMAP_BASE (void*) ;
 scalar_t__ internal_hashmap_free (int ,int *,int *) ;

__attribute__((used)) static inline OrderedHashmap *ordered_hashmap_free(OrderedHashmap *h) {
        return (void*) internal_hashmap_free(HASHMAP_BASE(h), ((void*)0), ((void*)0));
}
