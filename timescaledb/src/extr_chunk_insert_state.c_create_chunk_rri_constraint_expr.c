
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int ccbin; } ;
struct TYPE_11__ {TYPE_2__* rd_att; } ;
struct TYPE_10__ {int ** ri_ConstraintExprs; } ;
struct TYPE_9__ {TYPE_1__* constr; } ;
struct TYPE_8__ {int num_check; TYPE_5__* check; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef TYPE_4__* Relation ;
typedef int List ;
typedef int ExprState ;
typedef int Expr ;
typedef TYPE_5__ ConstrCheck ;


 int Assert (int) ;
 int * make_ands_implicit (int *) ;
 scalar_t__ palloc (int) ;
 int * prepare_constr_expr (int *) ;
 int * stringToNode (int ) ;

__attribute__((used)) static inline void
create_chunk_rri_constraint_expr(ResultRelInfo *rri, Relation rel)
{
 int ncheck, i;
 ConstrCheck *check;

 Assert(rel->rd_att->constr != ((void*)0) && rri->ri_ConstraintExprs == ((void*)0));

 ncheck = rel->rd_att->constr->num_check;
 check = rel->rd_att->constr->check;
 rri->ri_ConstraintExprs = (ExprState **) palloc(ncheck * sizeof(ExprState *));

 for (i = 0; i < ncheck; i++)
 {
  Expr *checkconstr = stringToNode(check[i].ccbin);

  rri->ri_ConstraintExprs[i] = prepare_constr_expr(checkconstr);
 }

}
