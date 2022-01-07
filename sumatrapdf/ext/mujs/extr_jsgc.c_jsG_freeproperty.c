
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {struct TYPE_4__* right; scalar_t__ level; struct TYPE_4__* left; } ;
typedef TYPE_1__ js_Property ;


 int js_free (int *,TYPE_1__*) ;

__attribute__((used)) static void jsG_freeproperty(js_State *J, js_Property *node)
{
 if (node->left->level) jsG_freeproperty(J, node->left);
 if (node->right->level) jsG_freeproperty(J, node->right);
 js_free(J, node);
}
