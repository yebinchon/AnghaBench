
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CPValue ;
typedef int CPState ;


 int cp_expr_sub (int *,int *,int ) ;
 scalar_t__ cp_opt (int *,char) ;

__attribute__((used)) static void cp_expr_comma(CPState *cp, CPValue *k)
{
  do { cp_expr_sub(cp, k, 0); } while (cp_opt(cp, ','));
}
