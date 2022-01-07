
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 char** internal_hashmap_get_strv (int ) ;

__attribute__((used)) static inline char **hashmap_get_strv(Hashmap *h) {
        return internal_hashmap_get_strv(HASHMAP_BASE(h));
}
