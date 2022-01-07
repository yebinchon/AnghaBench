
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_9__ {int application_name; int id; } ;
struct TYPE_11__ {TYPE_1__ fd; } ;
struct TYPE_10__ {struct TYPE_10__* data; } ;
typedef TYPE_2__* StringInfo ;
typedef int Oid ;
typedef TYPE_3__ BgwJob ;
typedef int BackgroundWorkerHandle ;


 int Int32GetDatum (int ) ;
 int NameStr (int ) ;
 int appendStringInfo (TYPE_2__*,char*,int ,int ) ;
 int job_entrypoint_function_name ;
 TYPE_2__* makeStringInfo () ;
 int pfree (TYPE_2__*) ;
 int * ts_bgw_start_worker (int ,int ,TYPE_2__*) ;

BackgroundWorkerHandle *
ts_bgw_job_start(BgwJob *job, Oid user_uid)
{
 int32 job_id = Int32GetDatum(job->fd.id);
 StringInfo si = makeStringInfo();
 BackgroundWorkerHandle *bgw_handle;


 appendStringInfo(si, "%u %d", user_uid, job_id);

 bgw_handle = ts_bgw_start_worker(job_entrypoint_function_name,
          NameStr(job->fd.application_name),
          si->data);

 pfree(si->data);
 pfree(si);
 return bgw_handle;
}
