
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int view_name; int schema; } ;
typedef TYPE_1__ EventTriggerDropView ;
typedef int ContinuousAgg ;


 int ts_continuous_agg_drop_view_callback (int *,int ,int ) ;
 int * ts_continuous_agg_find_by_view_name (int ,int ) ;

__attribute__((used)) static void
process_drop_view(EventTriggerDropView *dropped_view)
{
 ContinuousAgg *ca;

 ca = ts_continuous_agg_find_by_view_name(dropped_view->schema, dropped_view->view_name);
 if (ca != ((void*)0))
  ts_continuous_agg_drop_view_callback(ca, dropped_view->schema, dropped_view->view_name);
}
