
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int hashmap_free_with_destructor (int *,int ) ;
 int vacuum_candidate_free ;

__attribute__((used)) static void vacuum_candidate_hashmap_free(Hashmap *h) {
        hashmap_free_with_destructor(h, vacuum_candidate_free);
}
