
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ stb_uint16 ;
struct TYPE_5__ {TYPE_1__* nodes; } ;
typedef TYPE_2__ stb_matcher ;
struct TYPE_4__ {scalar_t__ active; } ;


 int stb_arr_len (scalar_t__*) ;

__attribute__((used)) static void stb__clear(stb_matcher *m, stb_uint16 *list)
{
   int i;
   for (i=0; i < stb_arr_len(list); ++i)
      m->nodes[(int) list[i]].active = 0;
}
