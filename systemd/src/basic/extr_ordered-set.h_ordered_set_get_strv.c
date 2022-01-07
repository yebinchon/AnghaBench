
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedSet ;
typedef int OrderedHashmap ;


 int HASHMAP_BASE (int *) ;
 char** internal_hashmap_get_strv (int ) ;

__attribute__((used)) static inline char **ordered_set_get_strv(OrderedSet *s) {
        return internal_hashmap_get_strv(HASHMAP_BASE((OrderedHashmap*) s));
}
