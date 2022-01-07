
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ AST_LIST ;
 int minify ;
 int nl () ;
 int pstm (int ,TYPE_1__*) ;
 int pstmlist (int,TYPE_1__*) ;
 int putchar (char) ;

void jsP_dumpsyntax(js_State *J, js_Ast *prog, int dominify)
{
 minify = dominify;
 if (prog->type == AST_LIST)
  pstmlist(-1, prog);
 else {
  pstm(0, prog);
  nl();
 }
 if (minify > 1)
  putchar('\n');
}
