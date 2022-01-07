
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {int gapfill_typid; } ;
typedef int Oid ;
typedef int Node ;
typedef TYPE_1__ GapFillState ;
typedef scalar_t__ GapFillBoundary ;
typedef int Expr ;
typedef int Datum ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ GAPFILL_START ;
 int InvalidOid ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char*) ;
 int exprType (int *) ;
 int gapfill_datum_get_internal (int ,int ) ;
 int gapfill_exec_expr (TYPE_1__*,int *,int*) ;
 int get_cast_func (int ,int ) ;
 int list_make1 (int *) ;
 scalar_t__ makeFuncExpr (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int64
get_boundary_expr_value(GapFillState *state, GapFillBoundary boundary, Expr *expr)
{
 Datum arg_value;
 bool isnull;




 if (exprType((Node *) expr) != state->gapfill_typid)
 {
  Oid cast_oid = get_cast_func(exprType((Node *) expr), state->gapfill_typid);

  expr = (Expr *) makeFuncExpr(cast_oid,
          state->gapfill_typid,
          list_make1(expr),
          InvalidOid,
          InvalidOid,
          0);
 }

 arg_value = gapfill_exec_expr(state, expr, &isnull);

 if (isnull)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid time_bucket_gapfill argument: %s cannot be NULL",
      boundary == GAPFILL_START ? "start" : "finish"),
     errhint(
      "You can either pass start and finish as arguments or in the WHERE clause")));

 return gapfill_datum_get_internal(arg_value, state->gapfill_typid);
}
