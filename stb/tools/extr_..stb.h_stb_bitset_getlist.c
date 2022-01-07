
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_bitset ;


 int stb_arr_push (int*,int) ;
 scalar_t__ stb_bitset_testbit (int *,int) ;

int *stb_bitset_getlist(stb_bitset *out, int start, int end)
{
   int *list = ((void*)0);
   int i;
   for (i=start; i < end; ++i)
      if (stb_bitset_testbit(out, i))
         stb_arr_push(list, i);
   return list;
}
