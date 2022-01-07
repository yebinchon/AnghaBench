
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {char* name; struct TYPE_3__* right; scalar_t__ level; int value; struct TYPE_3__* left; } ;
typedef TYPE_1__ js_Property ;


 int js_dumpvalue (int *,int ) ;
 scalar_t__ minify ;
 int printf (char*,...) ;

__attribute__((used)) static void js_dumpproperty(js_State *J, js_Property *node)
{
 minify = 0;
 if (node->left->level)
  js_dumpproperty(J, node->left);
 printf("\t%s: ", node->name);
 js_dumpvalue(J, node->value);
 printf(",\n");
 if (node->right->level)
  js_dumpproperty(J, node->right);
}
