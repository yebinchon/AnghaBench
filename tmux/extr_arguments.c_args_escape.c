
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIS_CSTYLE ;
 int VIS_DQ ;
 int VIS_NL ;
 int VIS_OCTAL ;
 int VIS_TAB ;
 int free (char*) ;
 int * strchr (char const*,char const) ;
 size_t strcspn (char const*,char const*) ;
 int utf8_stravis (char**,char const*,int) ;
 int xasprintf (char**,char*,...) ;
 char* xstrdup (char const*) ;

char *
args_escape(const char *s)
{
 static const char quoted[] = " #\"';${}";
 char *escaped, *result;
 int flags;

 if (*s == '\0')
  return (xstrdup(s));
 if (s[0] != ' ' &&
     (strchr(quoted, s[0]) != ((void*)0) || s[0] == '~') &&
     s[1] == '\0') {
  xasprintf(&escaped, "\\%c", s[0]);
  return (escaped);
 }

 flags = VIS_OCTAL|VIS_CSTYLE|VIS_TAB|VIS_NL;
 if (s[strcspn(s, quoted)] != '\0')
  flags |= VIS_DQ;
 utf8_stravis(&escaped, s, flags);

 if (flags & VIS_DQ) {
  if (*escaped == '~')
   xasprintf(&result, "\"\\%s\"", escaped);
  else
   xasprintf(&result, "\"%s\"", escaped);
 } else {
  if (*escaped == '~')
   xasprintf(&result, "\\%s", escaped);
  else
   result = xstrdup(escaped);
 }
 free(escaped);
 return (result);
}
