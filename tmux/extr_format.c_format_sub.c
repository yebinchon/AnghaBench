
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_modifier {int argc; int * argv; } ;


 int REG_EXTENDED ;
 int REG_ICASE ;
 char* regsub (char const*,char const*,char const*,int) ;
 int * strchr (int ,char) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
format_sub(struct format_modifier *fm, const char *text, const char *pattern,
    const char *with)
{
 char *value;
 int flags = REG_EXTENDED;

 if (fm->argc >= 3 && strchr(fm->argv[2], 'i') != ((void*)0))
  flags |= REG_ICASE;
 value = regsub(pattern, with, text, flags);
 if (value == ((void*)0))
  return (xstrdup(text));
 return (value);
}
