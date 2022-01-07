
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16 ;
typedef int PlannerInfo ;
typedef int PathKey ;
typedef int Oid ;
typedef int Node ;
typedef int Index ;
typedef int Expr ;


 scalar_t__ BTGreaterStrategyNumber ;
 int ERROR ;
 int bms_make_singleton (int ) ;
 int elog (int ,char*,int ) ;
 int exprCollation (int *) ;
 int get_ordering_op_properties (int ,int *,int *,scalar_t__*) ;
 int * ts_make_pathkey_from_sortinfo (int *,int *,int *,int ,int ,int ,int,int,int ,int ,int) ;

__attribute__((used)) static PathKey *
make_pathkey_from_compressed(PlannerInfo *root, Index compressed_relid, Expr *expr, Oid ordering_op,
        bool nulls_first)
{
 Oid opfamily, opcintype, collation;
 int16 strategy;


 if (!get_ordering_op_properties(ordering_op, &opfamily, &opcintype, &strategy))
  elog(ERROR, "operator %u is not a valid ordering operator", ordering_op);


 collation = exprCollation((Node *) expr);

 return ts_make_pathkey_from_sortinfo(root,
           expr,
           ((void*)0),
           opfamily,
           opcintype,
           collation,
           (strategy == BTGreaterStrategyNumber),
           nulls_first,
           0,
           bms_make_singleton(compressed_relid),
           1);
}
