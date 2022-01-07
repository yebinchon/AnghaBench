
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int direct_view_name; int direct_view_schema; int partial_view_name; int partial_view_schema; int user_view_name; int user_view_schema; } ;
typedef TYPE_1__ FormData_continuous_agg ;
typedef int ContinuousAggViewType ;


 scalar_t__ CHECK_NAME_MATCH (int *,char const*) ;
 int ContinuousAggDirectView ;
 int ContinuousAggNone ;
 int ContinuousAggPartialView ;
 int ContinuousAggUserView ;

ContinuousAggViewType
ts_continuous_agg_view_type(FormData_continuous_agg *data, const char *schema, const char *name)
{
 if (CHECK_NAME_MATCH(&data->user_view_schema, schema) &&
  CHECK_NAME_MATCH(&data->user_view_name, name))
  return ContinuousAggUserView;
 else if (CHECK_NAME_MATCH(&data->partial_view_schema, schema) &&
    CHECK_NAME_MATCH(&data->partial_view_name, name))
  return ContinuousAggPartialView;
 else if (CHECK_NAME_MATCH(&data->direct_view_schema, schema) &&
    CHECK_NAME_MATCH(&data->direct_view_name, name))
  return ContinuousAggDirectView;
 else
  return ContinuousAggNone;
}
