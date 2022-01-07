
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedSet ;
typedef int OrderedHashmap ;


 int ordered_hashmap_put (int *,void*,void*) ;

__attribute__((used)) static inline int ordered_set_put(OrderedSet *s, void *p) {
        return ordered_hashmap_put((OrderedHashmap*) s, p, p);
}
