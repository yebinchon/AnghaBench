
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WithClauseResult ;
struct TYPE_2__ {int (* continuous_agg_update_options ) (int *,int *) ;} ;
typedef int Oid ;
typedef int List ;
typedef int ContinuousAgg ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int * NIL ;
 int continuous_agg_with_clause_perm_check (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ list_length (int *) ;
 int stub1 (int *,int *) ;
 TYPE_1__* ts_cm_functions ;
 int * ts_continuous_agg_with_clause_parse (int *) ;
 int ts_with_clause_filter (int const*,int **,int **) ;

__attribute__((used)) static void
process_altercontinuousagg_set_with(ContinuousAgg *cagg, Oid view_relid, const List *defelems)
{
 WithClauseResult *parse_results;
 List *pg_options = NIL, *cagg_options = NIL;

 continuous_agg_with_clause_perm_check(cagg, view_relid);

 ts_with_clause_filter(defelems, &cagg_options, &pg_options);
 if (list_length(pg_options) > 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("only timescaledb parameters allowed in WITH clause for continuous "
      "aggregate")));

 if (list_length(cagg_options) > 0)
 {
  parse_results = ts_continuous_agg_with_clause_parse(cagg_options);
  ts_cm_functions->continuous_agg_update_options(cagg, parse_results);
 }
}
