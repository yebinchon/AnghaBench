
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* out; int* eps; scalar_t__ goal; } ;
typedef TYPE_1__ stb_nfa_node ;
struct TYPE_5__ {TYPE_1__* nodes; } ;
typedef TYPE_2__ stb_matcher ;


 int stb_arr_len (int*) ;

__attribute__((used)) static int stb__opt(stb_matcher *m, int n)
{
   for(;;) {
      stb_nfa_node *p = &m->nodes[n];
      if (p->goal) return n;
      if (stb_arr_len(p->out)) return n;
      if (stb_arr_len(p->eps) != 1) return n;
      n = p->eps[0];
   }
}
