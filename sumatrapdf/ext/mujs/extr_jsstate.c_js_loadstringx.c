
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * GE; int * E; scalar_t__ strict; scalar_t__ default_strict; } ;
typedef TYPE_1__ js_State ;
typedef int js_Function ;
typedef int js_Ast ;


 int * jsC_compilescript (TYPE_1__*,int *,scalar_t__) ;
 int jsP_freeparse (TYPE_1__*) ;
 int * jsP_parse (TYPE_1__*,char const*,char const*) ;
 int js_endtry (TYPE_1__*) ;
 int js_newscript (TYPE_1__*,int *,int *) ;
 int js_throw (TYPE_1__*) ;
 scalar_t__ js_try (TYPE_1__*) ;

__attribute__((used)) static void js_loadstringx(js_State *J, const char *filename, const char *source, int iseval)
{
 js_Ast *P;
 js_Function *F;

 if (js_try(J)) {
  jsP_freeparse(J);
  js_throw(J);
 }

 P = jsP_parse(J, filename, source);
 F = jsC_compilescript(J, P, iseval ? J->strict : J->default_strict);
 jsP_freeparse(J);
 js_newscript(J, F, iseval ? (J->strict ? J->E : ((void*)0)) : J->GE);

 js_endtry(J);
}
