
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ stb_uint16 ;
struct TYPE_7__ {TYPE_1__* nodes; int start_node; } ;
typedef TYPE_2__ stb_matcher ;
struct TYPE_6__ {int goal; } ;


 int stb__lex_reset (TYPE_2__*) ;
 char* stb__reg_parse_alt (TYPE_2__*,int ,char*,scalar_t__*) ;

int stb_lex_item(stb_matcher *matcher, const char *regex, int result)
{
   char *z;
   stb_uint16 end;

   z = stb__reg_parse_alt(matcher, matcher->start_node, (char*) regex, &end);

   if (z == ((void*)0))
      return 0;

   stb__lex_reset(matcher);

   matcher->nodes[(int) end].goal = result;
   return 1;
}
