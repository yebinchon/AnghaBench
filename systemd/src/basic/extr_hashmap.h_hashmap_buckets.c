
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_buckets (int ) ;

__attribute__((used)) static inline unsigned hashmap_buckets(Hashmap *h) {
        return internal_hashmap_buckets(HASHMAP_BASE(h));
}
