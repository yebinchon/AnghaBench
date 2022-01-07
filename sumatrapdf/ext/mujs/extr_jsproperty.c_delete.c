
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_8__ {char* name; int level; struct TYPE_8__* right; struct TYPE_8__* left; int value; int atts; } ;
typedef TYPE_1__ js_Property ;
typedef int js_Object ;


 int freeproperty (int *,int *,TYPE_1__*) ;
 TYPE_1__ sentinel ;
 void* skew (TYPE_1__*) ;
 void* split (TYPE_1__*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static js_Property *delete(js_State *J, js_Object *obj, js_Property *node, const char *name)
{
 js_Property *temp, *succ;

 if (node != &sentinel) {
  int c = strcmp(name, node->name);
  if (c < 0) {
   node->left = delete(J, obj, node->left, name);
  } else if (c > 0) {
   node->right = delete(J, obj, node->right, name);
  } else {
   if (node->left == &sentinel) {
    temp = node;
    node = node->right;
    freeproperty(J, obj, temp);
   } else if (node->right == &sentinel) {
    temp = node;
    node = node->left;
    freeproperty(J, obj, temp);
   } else {
    succ = node->right;
    while (succ->left != &sentinel)
     succ = succ->left;
    node->name = succ->name;
    node->atts = succ->atts;
    node->value = succ->value;
    node->right = delete(J, obj, node->right, succ->name);
   }
  }

  if (node->left->level < node->level - 1 ||
   node->right->level < node->level - 1)
  {
   if (node->right->level > --node->level)
    node->right->level = node->level;
   node = skew(node);
   node->right = skew(node->right);
   node->right->right = skew(node->right->right);
   node = split(node);
   node->right = split(node->right);
  }
 }
 return node;
}
