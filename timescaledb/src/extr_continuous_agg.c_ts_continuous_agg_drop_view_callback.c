
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef int ContinuousAggViewType ;
typedef TYPE_1__ ContinuousAgg ;





 int ERROR ;
 int drop_continuous_agg (TYPE_1__*,int) ;
 int drop_internal_view (TYPE_1__*) ;
 int elog (int ,char*) ;
 int ts_continuous_agg_view_type (int *,char const*,char const*) ;

void
ts_continuous_agg_drop_view_callback(ContinuousAgg *ca, const char *schema, const char *name)
{
 ContinuousAggViewType vtyp;
 vtyp = ts_continuous_agg_view_type(&ca->data, schema, name);
 switch (vtyp)
 {
  case 128:
   drop_continuous_agg(ca, 0 );
   break;
  case 129:
  case 130:
   drop_internal_view(ca);
   break;
  default:
   elog(ERROR, "unknown continuous aggregate view type");
 }
}
