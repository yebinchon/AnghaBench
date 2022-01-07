
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* body; scalar_t__ block; } ;
typedef TYPE_1__ node_lambda ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_2__ node ;


 scalar_t__ NODE_LAMBDA ;

__attribute__((used)) static node*
cond_body(node* body)
{
  if (body == ((void*)0)) return ((void*)0);
  if (body->type == NODE_LAMBDA) {
    node_lambda* lambda = (node_lambda*)body;
    if (lambda->block) {
      return lambda->body;
    }
  }
  return body;
}
