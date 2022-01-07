
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int tuple; int scanrel; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_5__ {int id; } ;
typedef int ScanTupleResult ;
typedef TYPE_2__ FormData_bgw_job ;
typedef int CatalogSecurityContext ;


 scalar_t__ GETSTRUCT (int ) ;
 int SCAN_CONTINUE ;
 int ts_bgw_job_stat_delete (int ) ;
 int ts_bgw_policy_chunk_stats_delete_row_only_by_job_id (int ) ;
 int ts_bgw_policy_drop_chunks_delete_row_only_by_job_id (int ) ;
 int ts_bgw_policy_reorder_delete_row_only_by_job_id (int ) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_delete (int ,int ) ;
 int ts_catalog_restore_user (int *) ;

__attribute__((used)) static ScanTupleResult
bgw_job_tuple_delete(TupleInfo *ti, void *data)
{
 CatalogSecurityContext sec_ctx;
 int32 job_id = ((FormData_bgw_job *) GETSTRUCT(ti->tuple))->id;


 ts_bgw_job_stat_delete(job_id);


 ts_bgw_policy_reorder_delete_row_only_by_job_id(job_id);
 ts_bgw_policy_drop_chunks_delete_row_only_by_job_id(job_id);


 ts_bgw_policy_chunk_stats_delete_row_only_by_job_id(job_id);

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_delete(ti->scanrel, ti->tuple);
 ts_catalog_restore_user(&sec_ctx);

 return SCAN_CONTINUE;
}
