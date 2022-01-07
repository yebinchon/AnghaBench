
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WithClauseResult ;
typedef int List ;


 int TS_ARRAY_LEN (int ) ;
 int continuous_aggregate_with_clause_def ;
 int * ts_with_clauses_parse (int const*,int ,int ) ;

WithClauseResult *
ts_continuous_agg_with_clause_parse(const List *defelems)
{
 return ts_with_clauses_parse(defelems,
         continuous_aggregate_with_clause_def,
         TS_ARRAY_LEN(continuous_aggregate_with_clause_def));
}
