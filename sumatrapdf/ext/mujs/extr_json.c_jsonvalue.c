
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int lookahead; char* text; int number; } ;
typedef TYPE_1__ js_State ;







 int jsY_tokenstring (int const) ;
 int js_newarray (TYPE_1__*) ;
 int js_newobject (TYPE_1__*) ;
 int js_pushboolean (TYPE_1__*,int) ;
 int js_pushnull (TYPE_1__*) ;
 int js_pushnumber (TYPE_1__*,int ) ;
 int js_pushstring (TYPE_1__*,char*) ;
 int js_setindex (TYPE_1__*,int,int ) ;
 int js_setproperty (TYPE_1__*,int,char const*) ;
 int js_syntaxerror (TYPE_1__*,char*,int ) ;
 int jsonaccept (TYPE_1__*,char) ;
 int jsonexpect (TYPE_1__*,char) ;
 int jsonnext (TYPE_1__*) ;

__attribute__((used)) static void jsonvalue(js_State *J)
{
 int i;
 const char *name;

 switch (J->lookahead) {
 case 129:
  js_pushstring(J, J->text);
  jsonnext(J);
  break;

 case 130:
  js_pushnumber(J, J->number);
  jsonnext(J);
  break;

 case '{':
  js_newobject(J);
  jsonnext(J);
  if (jsonaccept(J, '}'))
   return;
  do {
   if (J->lookahead != 129)
    js_syntaxerror(J, "JSON: unexpected token: %s (expected string)", jsY_tokenstring(J->lookahead));
   name = J->text;
   jsonnext(J);
   jsonexpect(J, ':');
   jsonvalue(J);
   js_setproperty(J, -2, name);
  } while (jsonaccept(J, ','));
  jsonexpect(J, '}');
  break;

 case '[':
  js_newarray(J);
  jsonnext(J);
  i = 0;
  if (jsonaccept(J, ']'))
   return;
  do {
   jsonvalue(J);
   js_setindex(J, -2, i++);
  } while (jsonaccept(J, ','));
  jsonexpect(J, ']');
  break;

 case 128:
  js_pushboolean(J, 1);
  jsonnext(J);
  break;

 case 132:
  js_pushboolean(J, 0);
  jsonnext(J);
  break;

 case 131:
  js_pushnull(J);
  jsonnext(J);
  break;

 default:
  js_syntaxerror(J, "JSON: unexpected token: %s", jsY_tokenstring(J->lookahead));
 }
}
