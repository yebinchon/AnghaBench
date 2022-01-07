
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int stb_uint16 ;
struct TYPE_8__ {int member_1; int member_0; } ;
typedef TYPE_2__ stb_nfa_edge ;
struct TYPE_9__ {TYPE_1__* nodes; } ;
typedef TYPE_3__ stb_matcher ;
typedef int stb_int16 ;
struct TYPE_7__ {int * out; } ;


 int stb_arr_malloc (void**,TYPE_3__*) ;
 int stb_arr_push (int *,TYPE_2__) ;

__attribute__((used)) static void stb__add_edge(stb_matcher *matcher, int from, int to, int type)
{
    stb_nfa_edge z = { (stb_int16)type, (stb_uint16)to };
   if (matcher->nodes[from].out == ((void*)0))
      stb_arr_malloc((void **) &matcher->nodes[from].out, matcher);
   stb_arr_push(matcher->nodes[from].out, z);
}
