
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int varcollid; int vartype; } ;
typedef TYPE_2__ Var ;
struct TYPE_9__ {TYPE_1__* compressed_rel; } ;
struct TYPE_7__ {int relid; } ;
typedef int StrategyNumber ;
typedef TYPE_3__ QualPushdownContext ;
typedef int OpExpr ;
typedef int Oid ;
typedef int Expr ;
typedef int AttrNumber ;


 int BOOLOID ;
 int InvalidOid ;
 int copyObject (int *) ;
 TYPE_2__* makeVar (int ,int ,int ,int,int ,int ) ;
 scalar_t__ make_opclause (int ,int ,int,int *,int ,int ,int ) ;

__attribute__((used)) static OpExpr *
make_segment_meta_opexpr(QualPushdownContext *context, Oid opno, AttrNumber meta_column_attno,
       Var *uncompressed_var, Expr *compare_to_expr, StrategyNumber strategy)
{
 Var *meta_var = makeVar(context->compressed_rel->relid,
       meta_column_attno,
       uncompressed_var->vartype,
       -1,
       InvalidOid,
       0);

 return (OpExpr *) make_opclause(opno,
         BOOLOID,
         0,
         (Expr *) meta_var,
         copyObject(compare_to_expr),
         InvalidOid,
         uncompressed_var->varcollid);
}
