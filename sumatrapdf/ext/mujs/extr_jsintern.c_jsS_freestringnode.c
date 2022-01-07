
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ js_StringNode ;
typedef int js_State ;


 TYPE_1__ jsS_sentinel ;
 int js_free (int *,TYPE_1__*) ;

__attribute__((used)) static void jsS_freestringnode(js_State *J, js_StringNode *node)
{
 if (node->left != &jsS_sentinel) jsS_freestringnode(J, node->left);
 if (node->right != &jsS_sentinel) jsS_freestringnode(J, node->right);
 js_free(J, node);
}
