
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ astdepth; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int * EXP3 (int ,int *,int *,int ) ;
 int FUN ;
 int jsP_next (TYPE_1__*) ;
 int jsP_parse (TYPE_1__*,char const*,char const*) ;
 int jsY_initlex (TYPE_1__*,char const*,char const*) ;
 int * parameters (TYPE_1__*) ;

js_Ast *jsP_parsefunction(js_State *J, const char *filename, const char *params, const char *body)
{
 js_Ast *p = ((void*)0);
 int line = 0;
 if (params) {
  jsY_initlex(J, filename, params);
  jsP_next(J);
  J->astdepth = 0;
  p = parameters(J);
 }
 return EXP3(FUN, ((void*)0), p, jsP_parse(J, filename, body));
}
