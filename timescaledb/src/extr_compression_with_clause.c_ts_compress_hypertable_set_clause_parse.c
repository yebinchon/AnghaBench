
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WithClauseResult ;
typedef int List ;


 int TS_ARRAY_LEN (int ) ;
 int compress_hypertable_with_clause_def ;
 int * ts_with_clauses_parse (int const*,int ,int ) ;

WithClauseResult *
ts_compress_hypertable_set_clause_parse(const List *defelems)
{
 return ts_with_clauses_parse(defelems,
         compress_hypertable_with_clause_def,
         TS_ARRAY_LEN(compress_hypertable_with_clause_def));
}
