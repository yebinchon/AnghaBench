
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ astdepth; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int jsP_foldconst (int *) ;
 int jsP_next (TYPE_1__*) ;
 int jsY_initlex (TYPE_1__*,char const*,char const*) ;
 int * script (TYPE_1__*,int ) ;

js_Ast *jsP_parse(js_State *J, const char *filename, const char *source)
{
 js_Ast *p;

 jsY_initlex(J, filename, source);
 jsP_next(J);
 J->astdepth = 0;
 p = script(J, 0);
 if (p)
  jsP_foldconst(p);

 return p;
}
