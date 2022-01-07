
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ level; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ js_Property ;



__attribute__((used)) static js_Property *skew(js_Property *node)
{
 if (node->left->level == node->level) {
  js_Property *temp = node;
  node = node->left;
  temp->left = node->right;
  node->right = temp;
 }
 return node;
}
