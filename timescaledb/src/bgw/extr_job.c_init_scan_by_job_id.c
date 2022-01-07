
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int index; } ;
struct TYPE_6__ {TYPE_1__ ctx; } ;
typedef TYPE_2__ ScanIterator ;


 int Anum_bgw_job_pkey_idx_id ;
 int BGW_JOB ;
 int BGW_JOB_PKEY_IDX ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int catalog_get_index (int ,int ,int ) ;
 int ts_catalog_get () ;
 int ts_scan_iterator_scan_key_init (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static void
init_scan_by_job_id(ScanIterator *iterator, int32 job_id)
{
 iterator->ctx.index = catalog_get_index(ts_catalog_get(), BGW_JOB, BGW_JOB_PKEY_IDX);
 ts_scan_iterator_scan_key_init(iterator,
           Anum_bgw_job_pkey_idx_id,
           BTEqualStrategyNumber,
           F_INT4EQ,
           Int32GetDatum(job_id));
}
