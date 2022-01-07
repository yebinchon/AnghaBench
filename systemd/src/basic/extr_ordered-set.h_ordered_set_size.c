
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedSet ;
typedef int OrderedHashmap ;


 int ordered_hashmap_size (int *) ;

__attribute__((used)) static inline unsigned ordered_set_size(OrderedSet *s) {
        return ordered_hashmap_size((OrderedHashmap*) s);
}
