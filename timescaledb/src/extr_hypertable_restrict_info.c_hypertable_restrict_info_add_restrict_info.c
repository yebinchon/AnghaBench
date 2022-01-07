
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int num_base_restrictions; } ;
struct TYPE_10__ {int opno; int args; } ;
struct TYPE_9__ {int * clause; } ;
struct TYPE_8__ {int useOr; int opno; int args; } ;
typedef TYPE_1__ ScalarArrayOpExpr ;
typedef TYPE_2__ RestrictInfo ;
typedef int PlannerInfo ;
typedef TYPE_3__ OpExpr ;
typedef int Node ;
typedef TYPE_4__ HypertableRestrictInfo ;
typedef int Expr ;




 scalar_t__ contain_mutable_functions (int *) ;
 int dimension_values_create_from_array ;
 int dimension_values_create_from_single_element ;
 int hypertable_restrict_info_add_expr (TYPE_4__*,int *,int ,int ,int ,int) ;
 int nodeTag (int *) ;

__attribute__((used)) static void
hypertable_restrict_info_add_restrict_info(HypertableRestrictInfo *hri, PlannerInfo *root,
             RestrictInfo *ri)
{
 bool added = 0;

 Expr *e = ri->clause;


 if (contain_mutable_functions((Node *) e))
  return;

 switch (nodeTag(e))
 {
  case 129:
  {
   OpExpr *op_expr = (OpExpr *) e;

   added = hypertable_restrict_info_add_expr(hri,
               root,
               op_expr->args,
               op_expr->opno,
               dimension_values_create_from_single_element,
               0);
   break;
  }

  case 128:
  {
   ScalarArrayOpExpr *scalar_expr = (ScalarArrayOpExpr *) e;

   added = hypertable_restrict_info_add_expr(hri,
               root,
               scalar_expr->args,
               scalar_expr->opno,
               dimension_values_create_from_array,
               scalar_expr->useOr);
   break;
  }
  default:

   break;
 }

 if (added)
  hri->num_base_restrictions++;
}
