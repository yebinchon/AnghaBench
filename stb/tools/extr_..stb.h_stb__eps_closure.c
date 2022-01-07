
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ stb_uint16 ;
struct TYPE_6__ {TYPE_1__* nodes; } ;
typedef TYPE_2__ stb_matcher ;
struct TYPE_5__ {scalar_t__* eps; } ;


 scalar_t__* stb__add_if_inactive (TYPE_2__*,scalar_t__*,scalar_t__) ;
 int stb_arr_len (scalar_t__*) ;

__attribute__((used)) static stb_uint16 * stb__eps_closure(stb_matcher *m, stb_uint16 *list)
{
   int i,n = stb_arr_len(list);

   for(i=0; i < n; ++i) {
      stb_uint16 *e = m->nodes[(int) list[i]].eps;
      if (e) {
         int j,k = stb_arr_len(e);
         for (j=0; j < k; ++j)
            list = stb__add_if_inactive(m, list, e[j]);
         n = stb_arr_len(list);
      }
   }

   return list;
}
