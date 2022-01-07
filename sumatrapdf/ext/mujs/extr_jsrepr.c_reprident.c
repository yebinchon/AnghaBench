
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Buffer ;


 scalar_t__ isalpha (char const) ;
 scalar_t__ isdigit (char const) ;
 int js_puts (int *,int **,char const*) ;
 int reprstr (int *,int **,char const*) ;

__attribute__((used)) static void reprident(js_State *J, js_Buffer **sb, const char *name)
{
 const char *p = name;
 if (isdigit(*p))
  while (isdigit(*p))
   ++p;
 else if (isalpha(*p) || *p == '_')
  while (isdigit(*p) || isalpha(*p) || *p == '_')
   ++p;
 if (p > name && *p == 0)
  js_puts(J, sb, name);
 else
  reprstr(J, sb, name);
}
