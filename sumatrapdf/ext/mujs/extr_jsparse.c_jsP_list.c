
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* b; struct TYPE_4__* parent; } ;
typedef TYPE_1__ js_Ast ;



__attribute__((used)) static js_Ast *jsP_list(js_Ast *head)
{

 js_Ast *prev = head, *node = head->b;
 while (node) {
  node->parent = prev;
  prev = node;
  node = node->b;
 }
 return head;
}
