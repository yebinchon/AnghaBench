
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ gt_opr; scalar_t__ lt_opr; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int StringInfo ;
typedef scalar_t__ Oid ;
typedef int Node ;


 scalar_t__ DEFAULT_COLLATION_OID ;
 int ERROR ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int TYPECACHE_GT_OPR ;
 int TYPECACHE_LT_OPR ;
 int appendStringInfo (int ,char*,char*) ;
 int appendStringInfoString (int ,char*) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ exprType (int *) ;
 char* get_collation_name (scalar_t__) ;
 int get_equality_op_for_ordering_op (scalar_t__,int*) ;
 char* get_opname (scalar_t__) ;
 TYPE_1__* lookup_type_cache (scalar_t__,int) ;
 char* quote_identifier (char*) ;

__attribute__((used)) static void
show_sortorder_options(StringInfo buf, Node *sortexpr, Oid sortOperator, Oid collation,
        bool nullsFirst)
{
 Oid sortcoltype = exprType(sortexpr);
 bool reverse = 0;
 TypeCacheEntry *typentry;

 typentry = lookup_type_cache(sortcoltype, TYPECACHE_LT_OPR | TYPECACHE_GT_OPR);






 if (OidIsValid(collation) && collation != DEFAULT_COLLATION_OID)
 {
  char *collname = get_collation_name(collation);

  if (collname == ((void*)0))
   elog(ERROR, "cache lookup failed for collation %u", collation);
  appendStringInfo(buf, " COLLATE %s", quote_identifier(collname));
 }


 if (sortOperator == typentry->gt_opr)
 {
  appendStringInfoString(buf, " DESC");
  reverse = 1;
 }
 else if (sortOperator != typentry->lt_opr)
 {
  char *opname = get_opname(sortOperator);

  if (opname == ((void*)0))
   elog(ERROR, "cache lookup failed for operator %u", sortOperator);
  appendStringInfo(buf, " USING %s", opname);

  (void) get_equality_op_for_ordering_op(sortOperator, &reverse);
 }


 if (nullsFirst && !reverse)
 {
  appendStringInfoString(buf, " NULLS FIRST");
 }
 else if (!nullsFirst && reverse)
 {
  appendStringInfoString(buf, " NULLS LAST");
 }
}
