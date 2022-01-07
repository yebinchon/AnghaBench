
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int * hashmap_free_with_destructor (int *,int ) ;
 int unit_file_list_free_one ;

Hashmap* unit_file_list_free(Hashmap *h) {
        return hashmap_free_with_destructor(h, unit_file_list_free_one);
}
