
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16 ;
typedef int Relids ;
typedef int PlannerInfo ;
typedef int PathKey ;
typedef int Oid ;
typedef int Node ;
typedef int Index ;
typedef int Expr ;


 scalar_t__ BTGreaterStrategyNumber ;
 int ERROR ;
 int elog (int ,char*,int ) ;
 int exprCollation (int *) ;
 int get_ordering_op_properties (int ,int *,int *,scalar_t__*) ;
 int * ts_make_pathkey_from_sortinfo (int *,int *,int ,int ,int ,int ,int,int,int ,int *,int) ;

PathKey *
ts_make_pathkey_from_sortop(PlannerInfo *root, Expr *expr, Relids nullable_relids, Oid ordering_op,
       bool nulls_first, Index sortref, bool create_it)
{
 Oid opfamily, opcintype, collation;
 int16 strategy;


 if (!get_ordering_op_properties(ordering_op, &opfamily, &opcintype, &strategy))
  elog(ERROR, "operator %u is not a valid ordering operator", ordering_op);


 collation = exprCollation((Node *) expr);

 return ts_make_pathkey_from_sortinfo(root,
           expr,
           nullable_relids,
           opfamily,
           opcintype,
           collation,
           (strategy == BTGreaterStrategyNumber),
           nulls_first,
           sortref,
           ((void*)0),
           create_it);
}
