
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dfa_start; int dfa_result; int dfa_mapping; int dfa; } ;
typedef TYPE_1__ stb_matcher ;


 int STB__DFA_UNDEF ;
 int stb_arr_setlen (int ,int ) ;

__attribute__((used)) static void stb__lex_reset(stb_matcher *matcher)
{

   stb_arr_setlen(matcher->dfa, 0);
   stb_arr_setlen(matcher->dfa_mapping, 0);
   stb_arr_setlen(matcher->dfa_result, 0);
   matcher->dfa_start = STB__DFA_UNDEF;
}
