
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef int ScanKeyData ;
typedef TYPE_2__ Hypertable ;


 int Anum_hypertable_pkey_idx_id ;
 int BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int F_INT4EQ ;
 int HYPERTABLE_ID_INDEX ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int hypertable_scan_limit_internal (int *,int,int ,int ,TYPE_2__*,int,int ,int,int ) ;
 int hypertable_tuple_update ;

int
ts_hypertable_update(Hypertable *ht)
{
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_hypertable_pkey_idx_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(ht->fd.id));

 return hypertable_scan_limit_internal(scankey,
            1,
            HYPERTABLE_ID_INDEX,
            hypertable_tuple_update,
            ht,
            1,
            RowExclusiveLock,
            0,
            CurrentMemoryContext);
}
