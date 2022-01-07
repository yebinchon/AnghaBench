
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* gcast; } ;
typedef TYPE_1__ js_State ;
struct TYPE_8__ {int jumps; struct TYPE_8__* gcnext; } ;
typedef TYPE_2__ js_Ast ;


 int jsP_freejumps (TYPE_1__*,int ) ;
 int js_free (TYPE_1__*,TYPE_2__*) ;

void jsP_freeparse(js_State *J)
{
 js_Ast *node = J->gcast;
 while (node) {
  js_Ast *next = node->gcnext;
  jsP_freejumps(J, node->jumps);
  js_free(J, node);
  node = next;
 }
 J->gcast = ((void*)0);
}
