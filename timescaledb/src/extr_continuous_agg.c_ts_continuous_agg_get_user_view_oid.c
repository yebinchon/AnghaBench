
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_view_schema; int user_view_name; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef int Oid ;
typedef TYPE_2__ ContinuousAgg ;


 int ERROR ;
 int NameStr (int ) ;
 int OidIsValid (int ) ;
 int elog (int ,char*) ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;

Oid
ts_continuous_agg_get_user_view_oid(ContinuousAgg *agg)
{
 Oid view_relid =
  get_relname_relid(NameStr(agg->data.user_view_name),
        get_namespace_oid(NameStr(agg->data.user_view_schema), 0));
 if (!OidIsValid(view_relid))
  elog(ERROR, "could not find user view for continuous agg");
 return view_relid;
}
