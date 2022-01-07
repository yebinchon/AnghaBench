
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int job_type; } ;
struct TYPE_5__ {int bgw_type; TYPE_1__ fd; } ;
typedef TYPE_2__ BgwJob ;


 int ERROR ;




 int NameStr (int ) ;
 int elog (int ,char*,int ) ;
 int license_print_expiration_warning_if_needed () ;
 int pg_unreachable () ;

__attribute__((used)) static bool
bgw_policy_job_requires_enterprise_license(BgwJob *job)
{
 license_print_expiration_warning_if_needed();

 switch (job->bgw_type)
 {
  case 128:
   return 1;
  case 129:
   return 1;
  case 130:
   return 0;
  case 131:
   return 0;
  default:
   elog(ERROR,
     "scheduler could not determine the license type for job type: \"%s\"",
     NameStr(job->fd.job_type));
 }
 pg_unreachable();
}
