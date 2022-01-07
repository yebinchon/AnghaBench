
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint16 ;
typedef int stb_matcher ;


 int stb__add_edge (int *,int,int,int) ;
 int stb__add_epsilon (int *,int,int) ;
 int stb__add_node (int *) ;
 int tolower (char) ;
 int toupper (char) ;

__attribute__((used)) static char *stb__wild_parse(stb_matcher *matcher, int start, char *str, stb_uint16 *end)
{
   int n;
   stb_uint16 last_end;

   last_end = stb__add_node(matcher);
   stb__add_epsilon(matcher, start, last_end);

   while (*str) {
      switch (*str) {

         default:
            n = stb__add_node(matcher);
            if (toupper(*str) == tolower(*str)) {
               stb__add_edge(matcher, last_end, n, *str);
            } else {
               stb__add_edge(matcher, last_end, n, tolower(*str));
               stb__add_edge(matcher, last_end, n, toupper(*str));
            }
            last_end = n;
            ++str;
            break;

         case '?':
            n = stb__add_node(matcher);
            stb__add_edge(matcher, last_end, n, -1);
            last_end = n;
            ++str;
            break;

         case '*':
            n = stb__add_node(matcher);
            stb__add_edge(matcher, last_end, n, -1);
            stb__add_epsilon(matcher, last_end, n);
            stb__add_epsilon(matcher, n, last_end);
            last_end = n;
            ++str;
            break;
      }
   }


   n = stb__add_node(matcher);
   stb__add_edge(matcher, last_end, n, 0);
   last_end = n;

   *end = last_end;
   return str;
}
