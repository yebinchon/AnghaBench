
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int * nvlist_next_nvpair (int *,int *) ;

size_t
fnvlist_num_pairs(nvlist_t *nvl)
{
 size_t count = 0;
 nvpair_t *pair;

 for (pair = nvlist_next_nvpair(nvl, 0); pair != ((void*)0);
     pair = nvlist_next_nvpair(nvl, pair))
  count++;
 return (count);
}
