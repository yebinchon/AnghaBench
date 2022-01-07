
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ depth; } ;
typedef int CPValue ;
typedef TYPE_1__ CPState ;


 scalar_t__ CPARSE_MAX_DECLDEPTH ;
 int LJ_ERR_XLEVELS ;
 int cp_err (TYPE_1__*,int ) ;
 int cp_expr_postfix (TYPE_1__*,int *) ;
 int cp_expr_prefix (TYPE_1__*,int *) ;

__attribute__((used)) static void cp_expr_unary(CPState *cp, CPValue *k)
{
  if (++cp->depth > CPARSE_MAX_DECLDEPTH) cp_err(cp, LJ_ERR_XLEVELS);
  cp_expr_prefix(cp, k);
  cp_expr_postfix(cp, k);
  cp->depth--;
}
