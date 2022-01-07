
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* gcast; } ;
typedef TYPE_1__ js_State ;
struct TYPE_12__ {int type; int line; struct TYPE_12__* gcnext; struct TYPE_12__* parent; scalar_t__ casejump; int * jumps; int * string; scalar_t__ number; struct TYPE_12__* d; struct TYPE_12__* c; struct TYPE_12__* b; struct TYPE_12__* a; } ;
typedef TYPE_2__ js_Ast ;
typedef enum js_AstType { ____Placeholder_js_AstType } js_AstType ;


 TYPE_2__* js_malloc (TYPE_1__*,int) ;

__attribute__((used)) static js_Ast *jsP_newnode(js_State *J, enum js_AstType type, int line, js_Ast *a, js_Ast *b, js_Ast *c, js_Ast *d)
{
 js_Ast *node = js_malloc(J, sizeof *node);

 node->type = type;
 node->line = line;
 node->a = a;
 node->b = b;
 node->c = c;
 node->d = d;
 node->number = 0;
 node->string = ((void*)0);
 node->jumps = ((void*)0);
 node->casejump = 0;

 node->parent = ((void*)0);
 if (a) a->parent = node;
 if (b) b->parent = node;
 if (c) c->parent = node;
 if (d) d->parent = node;

 node->gcnext = J->gcast;
 J->gcast = node;

 return node;
}
