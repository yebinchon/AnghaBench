
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * spa_label_features; } ;
typedef TYPE_1__ spa_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_mos(spa_t *spa)
{
 nvlist_t *nv = spa->spa_label_features;
 nvpair_t *pair;

 (void) printf("label config:\n");
 for (pair = nvlist_next_nvpair(nv, ((void*)0));
     pair != ((void*)0);
     pair = nvlist_next_nvpair(nv, pair)) {
  (void) printf("\t%s\n", nvpair_name(pair));
 }
}
