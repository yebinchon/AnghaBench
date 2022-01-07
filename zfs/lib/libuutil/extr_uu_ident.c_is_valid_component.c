
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;


 int UU_NAME_DOMAIN ;
 int is_valid_ident (char const*,char const*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
is_valid_component(const char *b, const char *e, uint_t flags)
{
 char *sp;

 if (flags & UU_NAME_DOMAIN) {
  sp = strchr(b, ',');
  if (sp != ((void*)0) && sp < e) {
   if (!is_valid_ident(b, sp, 1))
    return (0);
   b = sp + 1;
  }
 }

 return (is_valid_ident(b, e, 0));
}
