
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_modifier {int argc; char** argv; } ;
typedef int regex_t ;


 int FNM_CASEFOLD ;
 int REG_EXTENDED ;
 int REG_ICASE ;
 int REG_NOSUB ;
 scalar_t__ fnmatch (char const*,char const*,int) ;
 scalar_t__ regcomp (int *,char const*,int) ;
 scalar_t__ regexec (int *,char const*,int ,int *,int ) ;
 int regfree (int *) ;
 int * strchr (char const*,char) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
format_match(struct format_modifier *fm, const char *pattern, const char *text)
{
 const char *s = "";
 regex_t r;
 int flags = 0;

 if (fm->argc >= 1)
  s = fm->argv[0];
 if (strchr(s, 'r') == ((void*)0)) {
  if (strchr(s, 'i') != ((void*)0))
   flags |= FNM_CASEFOLD;
  if (fnmatch(pattern, text, flags) != 0)
   return (xstrdup("0"));
 } else {
  flags = REG_EXTENDED|REG_NOSUB;
  if (strchr(s, 'i') != ((void*)0))
   flags |= REG_ICASE;
  if (regcomp(&r, pattern, flags) != 0)
   return (xstrdup("0"));
  if (regexec(&r, text, 0, ((void*)0), 0) != 0) {
   regfree(&r);
   return (xstrdup("0"));
  }
  regfree(&r);
 }
 return (xstrdup("1"));
}
