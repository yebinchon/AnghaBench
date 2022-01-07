
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int free_sysvstub ;
 int hashmap_free_with_destructor (int *,int ) ;

__attribute__((used)) static void free_sysvstub_hashmapp(Hashmap **h) {
        hashmap_free_with_destructor(*h, free_sysvstub);
}
