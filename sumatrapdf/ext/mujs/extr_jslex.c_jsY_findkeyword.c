
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int text; } ;
typedef TYPE_1__ js_State ;


 int TK_BREAK ;
 int TK_IDENTIFIER ;
 int jsY_findword (char const*,int *,int ) ;
 int js_intern (TYPE_1__*,char const*) ;
 int * keywords ;
 int nelem (int *) ;

__attribute__((used)) static int jsY_findkeyword(js_State *J, const char *s)
{
 int i = jsY_findword(s, keywords, nelem(keywords));
 if (i >= 0) {
  J->text = keywords[i];
  return TK_BREAK + i;
 }
 J->text = js_intern(J, s);
 return TK_IDENTIFIER;
}
