
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint16 ;
typedef int stb_matcher ;


 int assert (int) ;
 int stb__add_epsilon (int *,int,int) ;
 int stb__add_node (int *) ;
 char* stb__reg_parse (int *,int,char*,int*) ;

__attribute__((used)) static char *stb__reg_parse_alt(stb_matcher *matcher, int start, char *regex, stb_uint16 *end)
{
   stb_uint16 last_end = start;
   stb_uint16 main_end;

   int head, tail;

   head = stb__add_node(matcher);
   stb__add_epsilon(matcher, start, head);

   regex = stb__reg_parse(matcher, head, regex, &last_end);
   if (regex == ((void*)0)) return ((void*)0);
   if (*regex == 0 || *regex == ')') {
      *end = last_end;
      return regex;
   }

   main_end = last_end;
   tail = stb__add_node(matcher);

   stb__add_epsilon(matcher, last_end, tail);



   while(*regex && *regex != ')') {
      assert(*regex == '|');
      head = stb__add_node(matcher);
      stb__add_epsilon(matcher, start, head);
      regex = stb__reg_parse(matcher, head, regex+1, &last_end);
      if (regex == ((void*)0))
         return ((void*)0);
      stb__add_epsilon(matcher, last_end, tail);
   }

   *end = tail;
   return regex;
}
