
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
 scalar_t__ INT2OID ;
 scalar_t__ INT4OID ;
 scalar_t__ INT8OID ;
 scalar_t__ IsA (int *,int ) ;
 int Var ;
 int * copyObject (int *) ;
 scalar_t__ exprType (int *) ;
 char* get_opname (int ) ;
 int * linitial (int ) ;
 int list_length (int ) ;
 int * lsecond (int ) ;
 int * ts_sort_transform_expr (int *) ;

__attribute__((used)) static inline Expr *
transform_int_op_const(OpExpr *op)
{
 if (list_length(op->args) == 2 &&
  (IsA(lsecond(op->args), Const) || IsA(linitial(op->args), Const)))
 {
  Oid left = exprType((Node *) linitial(op->args));
  Oid right = exprType((Node *) lsecond(op->args));

  if ((left == INT8OID && right == INT8OID) || (left == INT4OID && right == INT4OID) ||
   (left == INT2OID && right == INT2OID))
  {
   char *name = get_opname(op->opno);

   if (name[1] == '\0')
   {
    switch (name[0])
    {
     case '-':
     case '+':
     case '*':

      if (IsA(linitial(op->args), Const))
      {
       Expr *nonconst = ts_sort_transform_expr((Expr *) lsecond(op->args));

       if (IsA(nonconst, Var))
        return copyObject(nonconst);
      }
      else
      {
       Expr *nonconst = ts_sort_transform_expr((Expr *) linitial(op->args));

       if (IsA(nonconst, Var))
        return copyObject(nonconst);
      }
      break;
     case '/':

      if (IsA(lsecond(op->args), Const))
      {
       Expr *nonconst = ts_sort_transform_expr((Expr *) linitial(op->args));

       if (IsA(nonconst, Var))
        return copyObject(nonconst);
      }
      break;
    }
   }
  }
 }
 return (Expr *) op;
}
