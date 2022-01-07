
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t type; double number; struct TYPE_6__* d; struct TYPE_6__* c; struct TYPE_6__* b; struct TYPE_6__* a; int string; int line; } ;
typedef TYPE_1__ js_Ast ;




 size_t AST_LIST ;
 int * astname ;
 int pc (char) ;
 int pn (int ) ;
 int pregexp (int ,double) ;
 int printf (char*,double) ;
 int ps (int ) ;
 int pstr (int ) ;
 void sblock (int,TYPE_1__*) ;
 int slist (int,TYPE_1__*) ;

__attribute__((used)) static void snode(int d, js_Ast *node)
{
 void (*afun)(int,js_Ast*) = snode;
 void (*bfun)(int,js_Ast*) = snode;
 void (*cfun)(int,js_Ast*) = snode;
 void (*dfun)(int,js_Ast*) = snode;

 if (!node) {
  return;
 }

 if (node->type == AST_LIST) {
  slist(d, node);
  return;
 }

 pc('(');
 ps(astname[node->type]);
 pc(':');
 pn(node->line);
 switch (node->type) {
 default: break;
 case 139: pc(' '); ps(node->string); break;
 case 137: pc(' '); ps(node->string); break;
 case 132: pc(' '); pstr(node->string); break;
 case 133: pc(' '); pregexp(node->string, node->number); break;
 case 136: printf(" %.9g", node->number); break;
 case 131: afun = sblock; break;
 case 140: case 138: cfun = sblock; break;
 case 135: cfun = sblock; break;
 case 134: cfun = sblock; break;
 case 128: bfun = sblock; break;
 case 130: bfun = sblock; break;
 case 129: afun = sblock; break;
 }
 if (node->a) { pc(' '); afun(d, node->a); }
 if (node->b) { pc(' '); bfun(d, node->b); }
 if (node->c) { pc(' '); cfun(d, node->c); }
 if (node->d) { pc(' '); dfun(d, node->d); }
 pc(')');
}
