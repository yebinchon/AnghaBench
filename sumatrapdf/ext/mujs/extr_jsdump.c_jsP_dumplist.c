
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ AST_LIST ;
 scalar_t__ minify ;
 int nl () ;
 int sblock (int ,TYPE_1__*) ;
 int snode (int ,TYPE_1__*) ;

void jsP_dumplist(js_State *J, js_Ast *prog)
{
 minify = 0;
 if (prog->type == AST_LIST)
  sblock(0, prog);
 else
  snode(0, prog);
 nl();
}
