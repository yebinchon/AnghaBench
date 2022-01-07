
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dupes; int * hash_table; } ;
typedef TYPE_1__ stb_dupe ;


 int assert (int ) ;
 int stb_arr_len (int ) ;

int stb_dupe_set_count(stb_dupe *sd, int num)
{
   assert(sd->hash_table == ((void*)0));
   return stb_arr_len(sd->dupes[num]);
}
