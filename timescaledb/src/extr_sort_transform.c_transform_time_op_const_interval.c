
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int args; int opno; } ;
typedef TYPE_1__ OpExpr ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef int Expr ;


 int Const ;
 scalar_t__ DATEOID ;
 scalar_t__ INTERVALOID ;
 scalar_t__ IsA (int *,int ) ;
 int NAMEDATALEN ;
 scalar_t__ TIMESTAMPOID ;
 scalar_t__ TIMESTAMPTZOID ;
 int Var ;
 int * copyObject (int *) ;
 scalar_t__ exprType (int *) ;
 char* get_opname (int ) ;
 scalar_t__ linitial (int ) ;
 int list_length (int ) ;
 int * lsecond (int ) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int * ts_sort_transform_expr (int *) ;

__attribute__((used)) static inline Expr *
transform_time_op_const_interval(OpExpr *op)
{





 if (list_length(op->args) == 2 && IsA(lsecond(op->args), Const))
 {
  Oid left = exprType((Node *) linitial(op->args));
  Oid right = exprType((Node *) lsecond(op->args));

  if ((left == TIMESTAMPOID && right == INTERVALOID) ||
   (left == TIMESTAMPTZOID && right == INTERVALOID) ||
   (left == DATEOID && right == INTERVALOID))
  {
   char *name = get_opname(op->opno);

   if (strncmp(name, "-", NAMEDATALEN) == 0 || strncmp(name, "+", NAMEDATALEN) == 0)
   {
    Expr *first = ts_sort_transform_expr((Expr *) linitial(op->args));

    if (IsA(first, Var))
     return copyObject(first);
   }
  }
 }
 return (Expr *) op;
}
