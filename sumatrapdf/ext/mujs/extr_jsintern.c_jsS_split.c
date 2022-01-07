
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ level; struct TYPE_4__* left; struct TYPE_4__* right; } ;
typedef TYPE_1__ js_StringNode ;



__attribute__((used)) static js_StringNode *jsS_split(js_StringNode *node)
{
 if (node->right->right->level == node->level) {
  js_StringNode *temp = node;
  node = node->right;
  temp->right = node->left;
  node->left = temp;
  ++node->level;
 }
 return node;
}
