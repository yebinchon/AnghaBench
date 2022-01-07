
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_19__ {int job_type; int id; } ;
struct TYPE_23__ {int bgw_type; TYPE_4__ fd; } ;
struct TYPE_18__ {int hypertable_id; } ;
struct TYPE_22__ {TYPE_3__ fd; } ;
struct TYPE_17__ {int hypertable_id; } ;
struct TYPE_21__ {TYPE_2__ fd; } ;
struct TYPE_16__ {int hypertable_id; } ;
struct TYPE_20__ {TYPE_1__ fd; } ;
struct TYPE_15__ {int owner_uid; } ;
typedef int Oid ;
typedef int ContinuousAgg ;
typedef TYPE_5__ BgwPolicyReorder ;
typedef TYPE_6__ BgwPolicyDropChunks ;
typedef TYPE_7__ BgwPolicyCompressChunks ;
typedef TYPE_8__ BgwJob ;


 int ERROR ;






 int NameStr (int ) ;

 int elog (int ,char*,int ) ;
 TYPE_7__* ts_bgw_policy_compress_chunks_find_by_job (int ) ;
 TYPE_6__* ts_bgw_policy_drop_chunks_find_by_job (int ) ;
 TYPE_5__* ts_bgw_policy_reorder_find_by_job (int ) ;
 TYPE_10__* ts_catalog_database_info_get () ;
 int * ts_continuous_agg_find_by_job_id (int ) ;
 int ts_continuous_agg_get_user_view_oid (int *) ;
 int ts_hypertable_id_to_relid (int ) ;
 int ts_rel_get_owner (int ) ;
 int unknown_job_type_owner_hook (TYPE_8__*) ;

Oid
ts_bgw_job_owner(BgwJob *job)
{
 switch (job->bgw_type)
 {
  case 129:
   return ts_catalog_database_info_get()->owner_uid;
  case 131:
  {
   BgwPolicyReorder *policy = ts_bgw_policy_reorder_find_by_job(job->fd.id);

   if (policy == ((void*)0))
    elog(ERROR, "reorder policy for job with id \"%d\" not found", job->fd.id);

   return ts_rel_get_owner(ts_hypertable_id_to_relid(policy->fd.hypertable_id));
  }
  case 132:
  {
   BgwPolicyDropChunks *policy = ts_bgw_policy_drop_chunks_find_by_job(job->fd.id);

   if (policy == ((void*)0))
    elog(ERROR, "drop_chunks policy for job with id \"%d\" not found", job->fd.id);

   return ts_rel_get_owner(ts_hypertable_id_to_relid(policy->fd.hypertable_id));
  }
  case 133:
  {
   ContinuousAgg *ca = ts_continuous_agg_find_by_job_id(job->fd.id);

   if (ca == ((void*)0))
    elog(ERROR, "continuous aggregate for job with id \"%d\" not found", job->fd.id);

   return ts_rel_get_owner(ts_continuous_agg_get_user_view_oid(ca));
  }
  case 134:
  {
   BgwPolicyCompressChunks *policy = ts_bgw_policy_compress_chunks_find_by_job(job->fd.id);
   if (policy == ((void*)0))
    elog(ERROR, "compress chunks policy for job with id \"%d\" not found", job->fd.id);
   return ts_rel_get_owner(ts_hypertable_id_to_relid(policy->fd.hypertable_id));
  }
  case 130:
   if (unknown_job_type_owner_hook != ((void*)0))
    return unknown_job_type_owner_hook(job);
   break;
  case 128:
   break;
 }
 elog(ERROR, "unknown job type \"%s\" in finding owner", NameStr(job->fd.job_type));
}
