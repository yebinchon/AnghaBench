
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int partial_view_schema; } ;
typedef TYPE_1__ FormData_continuous_agg ;


 int CHECK_NAME_MATCH (int *,char const*) ;

__attribute__((used)) static inline bool
ts_continuous_agg_is_partial_view_schema(FormData_continuous_agg *data, const char *schema)
{
 return CHECK_NAME_MATCH(&data->partial_view_schema, schema);
}
