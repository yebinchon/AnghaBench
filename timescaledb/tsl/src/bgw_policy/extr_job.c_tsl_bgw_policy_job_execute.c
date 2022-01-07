
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int job_type; int id; } ;
struct TYPE_9__ {int bgw_type; TYPE_1__ fd; } ;
typedef TYPE_2__ BgwJob ;


 int ERROR ;




 int NameStr (int ) ;
 scalar_t__ bgw_policy_job_requires_enterprise_license (TYPE_2__*) ;
 int elog (int ,char*,int ) ;
 int execute_compress_chunks_policy (TYPE_2__*) ;
 int execute_drop_chunks_policy (int ) ;
 int execute_materialize_continuous_aggregate (TYPE_2__*) ;
 int execute_reorder_policy (TYPE_2__*,int ,int) ;
 int license_enforce_enterprise_enabled () ;
 int license_print_expiration_warning_if_needed () ;
 int pg_unreachable () ;
 int reorder_chunk ;

bool
tsl_bgw_policy_job_execute(BgwJob *job)
{
 if (bgw_policy_job_requires_enterprise_license(job))
  license_enforce_enterprise_enabled();
 license_print_expiration_warning_if_needed();

 switch (job->bgw_type)
 {
  case 128:
   return execute_reorder_policy(job, reorder_chunk, 1);
  case 129:
   return execute_drop_chunks_policy(job->fd.id);
  case 130:
   return execute_materialize_continuous_aggregate(job);
  case 131:
   return execute_compress_chunks_policy(job);
  default:
   elog(ERROR,
     "scheduler tried to run an invalid job type: \"%s\"",
     NameStr(job->fd.job_type));
 }
 pg_unreachable();
}
