
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedSet ;
typedef int OrderedHashmap ;


 scalar_t__ ordered_hashmap_free_free (int *) ;

__attribute__((used)) static inline OrderedSet* ordered_set_free_free(OrderedSet *s) {
        return (OrderedSet*) ordered_hashmap_free_free((OrderedHashmap*) s);
}
