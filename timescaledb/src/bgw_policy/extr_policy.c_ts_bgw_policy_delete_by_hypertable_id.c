
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int job_id; } ;
struct TYPE_8__ {TYPE_2__ fd; } ;
struct TYPE_5__ {int job_id; } ;
struct TYPE_7__ {TYPE_1__ fd; } ;
typedef TYPE_3__ BgwPolicyReorder ;
typedef TYPE_4__ BgwPolicyDropChunks ;


 int ts_bgw_job_delete_by_id (int ) ;
 void* ts_bgw_policy_drop_chunks_find_by_hypertable (int ) ;
 void* ts_bgw_policy_reorder_find_by_hypertable (int ) ;

void
ts_bgw_policy_delete_by_hypertable_id(int32 hypertable_id)
{





 void *policy = ts_bgw_policy_reorder_find_by_hypertable(hypertable_id);

 if (policy)
  ts_bgw_job_delete_by_id(((BgwPolicyReorder *) policy)->fd.job_id);

 policy = ts_bgw_policy_drop_chunks_find_by_hypertable(hypertable_id);

 if (policy)
  ts_bgw_job_delete_by_id(((BgwPolicyDropChunks *) policy)->fd.job_id);
}
