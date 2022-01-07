
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* source; char lexchar; int line; } ;
typedef TYPE_1__ js_State ;
typedef char Rune ;


 int chartorune (char*,char*) ;
 scalar_t__ jsY_isnewline (char) ;

__attribute__((used)) static void jsY_next(js_State *J)
{
 Rune c;
 J->source += chartorune(&c, J->source);

 if (c == '\r' && *J->source == '\n')
  ++J->source;
 if (jsY_isnewline(c)) {
  J->line++;
  c = '\n';
 }
 J->lexchar = c;
}
