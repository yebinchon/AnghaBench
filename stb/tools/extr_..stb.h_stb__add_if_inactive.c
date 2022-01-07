
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int stb_uint16 ;
struct TYPE_5__ {TYPE_1__* nodes; } ;
typedef TYPE_2__ stb_matcher ;
struct TYPE_4__ {int active; } ;


 int stb_arr_push (int *,int) ;

__attribute__((used)) static stb_uint16 * stb__add_if_inactive(stb_matcher *m, stb_uint16 *list, int n)
{
   if (!m->nodes[n].active) {
      stb_arr_push(list, n);
      m->nodes[n].active = 1;
   }
   return list;
}
