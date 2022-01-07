
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {scalar_t__ is_default; } ;
typedef TYPE_1__ WithClauseResult ;
typedef int Oid ;


 size_t ContinuousViewOptionRefreshLag ;
 int continuous_agg_parse_refresh_lag (int ,TYPE_1__*) ;

__attribute__((used)) static int64
get_refresh_lag(Oid column_type, int64 bucket_width, WithClauseResult *with_clause_options)
{
 if (with_clause_options[ContinuousViewOptionRefreshLag].is_default)
  return bucket_width * 2;
 return continuous_agg_parse_refresh_lag(column_type, with_clause_options);
}
