
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; int name; } ;
typedef TYPE_1__ js_Property ;


 TYPE_1__ sentinel ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static js_Property *lookup(js_Property *node, const char *name)
{
 while (node != &sentinel) {
  int c = strcmp(name, node->name);
  if (c == 0)
   return node;
  else if (c < 0)
   node = node->left;
  else
   node = node->right;
 }
 return ((void*)0);
}
