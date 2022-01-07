
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int block; int lineno; int * fname; TYPE_2__* body; TYPE_2__* args; int type; } ;
typedef TYPE_1__ node_lambda ;
struct TYPE_8__ {int lineno; int * fname; } ;
typedef TYPE_2__ node ;


 int NODE_LAMBDA ;
 TYPE_1__* malloc (int) ;

node*
node_lambda_alloc(node* args, node* compstmt, int block)
{
  node_lambda* lambda = malloc(sizeof(node_lambda));
  lambda->type = NODE_LAMBDA;
  lambda->args = args;
  lambda->body = compstmt;
  lambda->block = block;
  lambda->fname = compstmt ? compstmt->fname : ((void*)0);
  lambda->lineno = compstmt ? compstmt->lineno : 0;
  return (node*)lambda;
}
