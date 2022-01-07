
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_8__ {int flags; int prog; scalar_t__ last; } ;
typedef TYPE_2__ js_Regexp ;
struct TYPE_9__ {TYPE_1__* sub; } ;
struct TYPE_7__ {char* sp; char* ep; } ;
typedef TYPE_3__ Resub ;


 int JS_REGEXP_G ;
 int REG_NOTBOL ;
 char* checkstring (int *,int ) ;
 int js_RegExp_prototype_exec (int *,TYPE_2__*,char const*) ;
 int js_copy (int *,int) ;
 scalar_t__ js_doregexec (int *,int ,char const*,TYPE_3__*,int ) ;
 scalar_t__ js_isregexp (int *,int) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_newarray (int *) ;
 int js_newregexp (int *,char*,int ) ;
 int js_pop (int *,int) ;
 int js_pushlstring (int *,char const*,int) ;
 int js_pushnull (int *) ;
 int js_setindex (int *,int,int ) ;
 TYPE_2__* js_toregexp (int *,int) ;
 char* js_tostring (int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void Sp_match(js_State *J)
{
 js_Regexp *re;
 const char *text;
 int len;
 const char *a, *b, *c, *e;
 Resub m;

 text = checkstring(J, 0);

 if (js_isregexp(J, 1))
  js_copy(J, 1);
 else if (js_isundefined(J, 1))
  js_newregexp(J, "", 0);
 else
  js_newregexp(J, js_tostring(J, 1), 0);

 re = js_toregexp(J, -1);
 if (!(re->flags & JS_REGEXP_G)) {
  js_RegExp_prototype_exec(J, re, text);
  return;
 }

 re->last = 0;

 js_newarray(J);

 len = 0;
 a = text;
 e = text + strlen(text);
 while (a <= e) {
  if (js_doregexec(J, re->prog, a, &m, a > text ? REG_NOTBOL : 0))
   break;

  b = m.sub[0].sp;
  c = m.sub[0].ep;

  js_pushlstring(J, b, c - b);
  js_setindex(J, -2, len++);

  a = c;
  if (c - b == 0)
   ++a;
 }

 if (len == 0) {
  js_pop(J, 1);
  js_pushnull(J);
 }
}
