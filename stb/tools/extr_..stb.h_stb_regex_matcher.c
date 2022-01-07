
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ stb_uint16 ;
struct TYPE_8__ {int match_start; TYPE_1__* nodes; int start_node; } ;
typedef TYPE_2__ stb_matcher ;
struct TYPE_7__ {int goal; } ;


 int STB__NFA_STOP_GOAL ;
 TYPE_2__* stb__alloc_matcher () ;
 char* stb__reg_parse_alt (TYPE_2__*,int ,char*,scalar_t__*) ;
 int stb_free (TYPE_2__*) ;

stb_matcher *stb_regex_matcher(char *regex)
{
   char *z;
   stb_uint16 end;
   stb_matcher *matcher = stb__alloc_matcher();
   if (*regex == '^') {
      matcher->match_start = 1;
      ++regex;
   }

   z = stb__reg_parse_alt(matcher, matcher->start_node, regex, &end);

   if (!z || *z) {
      stb_free(matcher);
      return ((void*)0);
   }

   ((matcher->nodes)[(int) end]).goal = STB__NFA_STOP_GOAL;

   return matcher;
}
