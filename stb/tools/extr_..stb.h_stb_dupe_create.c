
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stb_hash_func ;
struct TYPE_3__ {int size_log2; int hash_size; void*** hash_table; int * dupes; scalar_t__ population; scalar_t__ hash_shift; void* ineq; void* eq; int hash; } ;
typedef TYPE_1__ stb_dupe ;
typedef void* stb_compare_func ;


 scalar_t__ malloc (int) ;

stb_dupe *stb_dupe_create(stb_hash_func hash, stb_compare_func eq, int size,
                                              stb_compare_func ineq)
{
   int i, hsize;
   stb_dupe *sd = (stb_dupe *) malloc(sizeof(*sd));

   sd->size_log2 = 4;
   hsize = 1 << sd->size_log2;
   while (hsize * hsize < size) {
      ++sd->size_log2;
      hsize *= 2;
   }

   sd->hash = hash;
   sd->eq = eq;
   sd->ineq = ineq;
   sd->hash_shift = 0;

   sd->population = 0;
   sd->hash_size = hsize;
   sd->hash_table = (void ***) malloc(sizeof(*sd->hash_table) * hsize);
   for (i=0; i < hsize; ++i)
      sd->hash_table[i] = ((void*)0);

   sd->dupes = ((void*)0);

   return sd;
}
