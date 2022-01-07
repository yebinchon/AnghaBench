
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a; } ;
typedef TYPE_1__ js_Ast ;


 int pexpi (int,int,int ) ;
 int ps (char const*) ;

__attribute__((used)) static void puna(int d, int p, js_Ast *exp, const char *pre, const char *suf)
{
 ps(pre);
 pexpi(d, p, exp->a);
 ps(suf);
}
