
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double number; int * d; int c; int b; int a; int type; } ;
typedef TYPE_1__ js_Ast ;


 int EXP_NUMBER ;

__attribute__((used)) static int jsP_setnumnode(js_Ast *node, double x)
{
 node->type = EXP_NUMBER;
 node->number = x;
 node->a = node->b = node->c = node->d = ((void*)0);
 return 1;
}
