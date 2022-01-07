
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int job_type; } ;
struct TYPE_5__ {TYPE_1__ fd; int bgw_type; } ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef int FormData_bgw_job ;
typedef TYPE_2__ BgwJob ;


 int Assert (int) ;
 int get_job_type_from_name (int *) ;
 scalar_t__ ts_create_struct_from_tuple (int ,int ,size_t,int) ;

__attribute__((used)) static BgwJob *
bgw_job_from_tuple(HeapTuple tuple, size_t alloc_size, MemoryContext mctx)
{
 BgwJob *job;





 Assert(alloc_size >= sizeof(BgwJob));
 job = (BgwJob *) ts_create_struct_from_tuple(tuple, mctx, alloc_size, sizeof(FormData_bgw_job));
 job->bgw_type = get_job_type_from_name(&job->fd.job_type);

 return job;
}
