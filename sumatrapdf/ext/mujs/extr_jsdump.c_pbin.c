
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; int a; } ;
typedef TYPE_1__ js_Ast ;


 int pexpi (int,int,int ) ;
 int ps (char const*) ;
 int sp () ;

__attribute__((used)) static void pbin(int d, int p, js_Ast *exp, const char *op)
{
 pexpi(d, p, exp->a);
 sp();
 ps(op);
 sp();
 pexpi(d, p, exp->b);
}
