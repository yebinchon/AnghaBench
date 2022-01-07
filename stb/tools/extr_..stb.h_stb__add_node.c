
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ out; scalar_t__ goal; scalar_t__ eps; scalar_t__ active; } ;
typedef TYPE_1__ stb_nfa_node ;
struct TYPE_6__ {int nodes; } ;
typedef TYPE_2__ stb_matcher ;


 int stb_arr_len (int ) ;
 int stb_arr_push (int ,TYPE_1__) ;

__attribute__((used)) static int stb__add_node(stb_matcher *matcher)
{
   stb_nfa_node z;
   z.active = 0;
   z.eps = 0;
   z.goal = 0;
   z.out = 0;
   stb_arr_push(matcher->nodes, z);
   return stb_arr_len(matcher->nodes)-1;
}
