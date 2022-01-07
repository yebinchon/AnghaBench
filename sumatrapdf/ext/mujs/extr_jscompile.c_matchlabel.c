
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* parent; TYPE_1__* a; } ;
typedef TYPE_2__ js_Ast ;
struct TYPE_4__ {int string; } ;


 scalar_t__ STM_LABEL ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int matchlabel(js_Ast *node, const char *label)
{
 while (node && node->type == STM_LABEL) {
  if (!strcmp(node->a->string, label))
   return 1;
  node = node->parent;
 }
 return 0;
}
