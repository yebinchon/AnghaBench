
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int HASHMAP_BASE (int *) ;
 char** internal_hashmap_get_strv (int ) ;

__attribute__((used)) static inline char **set_get_strv(Set *s) {
        return internal_hashmap_get_strv(HASHMAP_BASE(s));
}
