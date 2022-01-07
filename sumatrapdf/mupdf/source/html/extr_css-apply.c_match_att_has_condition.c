
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_xml ;


 char* fz_xml_att (int *,char const*) ;
 int strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static int
match_att_has_condition(fz_xml *node, const char *att, const char *needle)
{
 const char *haystack = fz_xml_att(node, att);
 const char *ss;
 size_t n;
 if (haystack) {

  if (!strcmp(haystack, needle))
   return 1;


  n = strlen(needle);
  ss = strstr(haystack, needle);
  if (ss && (ss[n] == ' ' || ss[n] == 0) && (ss == haystack || ss[-1] == ' '))
   return 1;
 }
 return 0;
}
