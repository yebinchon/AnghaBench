
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* b; } ;
typedef TYPE_1__ js_Ast ;



__attribute__((used)) static int listlength(js_Ast *list)
{
 int n = 0;
 while (list) ++n, list = list->b;
 return n;
}
