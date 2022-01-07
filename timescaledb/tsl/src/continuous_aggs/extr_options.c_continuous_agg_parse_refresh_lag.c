
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int parsed; int is_default; } ;
typedef TYPE_1__ WithClauseResult ;
typedef int Oid ;


 int Assert (int) ;
 size_t ContinuousViewOptionRefreshLag ;
 char* TextDatumGetCString (int ) ;
 int parse_interval (char*,int ,char*) ;

int64
continuous_agg_parse_refresh_lag(Oid column_type, WithClauseResult *with_clause_options)
{
 char *value;

 Assert(!with_clause_options[ContinuousViewOptionRefreshLag].is_default);

 value = TextDatumGetCString(with_clause_options[ContinuousViewOptionRefreshLag].parsed);

 return parse_interval(value, column_type, "refresh_lag");
}
