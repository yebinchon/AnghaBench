
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char*,char const) ;
 int strlen (char const*) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
format_quote(const char *s)
{
 const char *cp;
 char *out, *at;

 at = out = xmalloc(strlen(s) * 2 + 1);
 for (cp = s; *cp != '\0'; cp++) {
  if (strchr("|&;<>()$`\\\"'*?[# =%", *cp) != ((void*)0))
   *at++ = '\\';
  *at++ = *cp;
 }
 *at = '\0';
 return (out);
}
