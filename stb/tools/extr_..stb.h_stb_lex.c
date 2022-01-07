
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int does_lex; } ;
typedef TYPE_1__ stb_matcher ;


 int assert (int ) ;
 int stb__matcher_dfa (TYPE_1__*,char*,int*) ;

int stb_lex(stb_matcher *m, char *str, int *len)
{
   assert(m->does_lex);
   return stb__matcher_dfa(m, str, len);
}
