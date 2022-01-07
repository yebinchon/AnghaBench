
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stb_uint32 ;
struct TYPE_3__ {int (* hash ) (void*,int ) ;int hash_size; int population; int * hash_table; int hash_shift; } ;
typedef TYPE_1__ stb_dupe ;


 int stb_arr_push (int ,void*) ;
 int stub1 (void*,int ) ;

void stb_dupe_add(stb_dupe *sd, void *item)
{
   stb_uint32 hash = sd->hash(item, sd->hash_shift);
   int z = hash & (sd->hash_size-1);
   stb_arr_push(sd->hash_table[z], item);
   ++sd->population;
}
