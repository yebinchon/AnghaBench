
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_7__ {int prog; } ;
typedef TYPE_2__ js_Regexp ;
struct TYPE_8__ {TYPE_1__* sub; } ;
struct TYPE_6__ {int sp; } ;
typedef TYPE_3__ Resub ;


 char* checkstring (int *,int ) ;
 int js_copy (int *,int) ;
 int js_doregexec (int *,int ,char const*,TYPE_3__*,int ) ;
 scalar_t__ js_isregexp (int *,int) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_newregexp (int *,char*,int ) ;
 int js_pushnumber (int *,int) ;
 TYPE_2__* js_toregexp (int *,int) ;
 char* js_tostring (int *,int) ;
 int js_utfptrtoidx (char const*,int ) ;

__attribute__((used)) static void Sp_search(js_State *J)
{
 js_Regexp *re;
 const char *text;
 Resub m;

 text = checkstring(J, 0);

 if (js_isregexp(J, 1))
  js_copy(J, 1);
 else if (js_isundefined(J, 1))
  js_newregexp(J, "", 0);
 else
  js_newregexp(J, js_tostring(J, 1), 0);

 re = js_toregexp(J, -1);

 if (!js_doregexec(J, re->prog, text, &m, 0))
  js_pushnumber(J, js_utfptrtoidx(text, m.sub[0].sp));
 else
  js_pushnumber(J, -1);
}
