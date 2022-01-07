
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dfa_result; int dfa_mapping; int dfa; int dfa_start; scalar_t__ does_lex; scalar_t__ match_start; scalar_t__ num_charset; int nodes; scalar_t__ start_node; } ;
typedef TYPE_1__ stb_matcher ;


 int STB__DFA_UNDEF ;
 int stb__add_node (TYPE_1__*) ;
 int stb_arr_malloc (void**,TYPE_1__*) ;
 scalar_t__ stb_malloc (int ,int) ;

__attribute__((used)) static stb_matcher *stb__alloc_matcher(void)
{
   stb_matcher *matcher = (stb_matcher *) stb_malloc(0,sizeof(*matcher));

   matcher->start_node = 0;
   stb_arr_malloc((void **) &matcher->nodes, matcher);
   matcher->num_charset = 0;
   matcher->match_start = 0;
   matcher->does_lex = 0;

   matcher->dfa_start = STB__DFA_UNDEF;
   stb_arr_malloc((void **) &matcher->dfa, matcher);
   stb_arr_malloc((void **) &matcher->dfa_mapping, matcher);
   stb_arr_malloc((void **) &matcher->dfa_result, matcher);

   stb__add_node(matcher);

   return matcher;
}
