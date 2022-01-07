
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_5__ {int job_id; } ;
typedef int ScanTupleResult ;
typedef TYPE_2__ FormData_bgw_policy_chunk_stats ;


 scalar_t__ GETSTRUCT (int ) ;
 int SCAN_CONTINUE ;
 int ts_bgw_job_delete_by_id (int ) ;

__attribute__((used)) static ScanTupleResult
bgw_policy_chunk_stats_delete_via_job_tuple_found(TupleInfo *ti, void *const data)
{
 FormData_bgw_policy_chunk_stats *fd = (FormData_bgw_policy_chunk_stats *) GETSTRUCT(ti->tuple);


 ts_bgw_job_delete_by_id(fd->job_id);
 return SCAN_CONTINUE;
}
