
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef int ScanKeyData ;
typedef TYPE_1__ FormData_chunk ;


 int AccessShareLock ;
 int Anum_chunk_idx_id ;
 int BTEqualStrategyNumber ;
 int CHUNK_ID_INDEX ;
 int CurrentMemoryContext ;
 int F_INT4EQ ;
 int ForwardScanDirection ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 scalar_t__ chunk_scan_internal (int ,int *,int,int ,TYPE_1__*,int ,int ,int ,int ) ;
 int chunk_tuple_update_schema_and_table ;

__attribute__((used)) static bool
chunk_update_form(FormData_chunk *form)
{
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0], Anum_chunk_idx_id, BTEqualStrategyNumber, F_INT4EQ, form->id);

 return chunk_scan_internal(CHUNK_ID_INDEX,
          scankey,
          1,
          chunk_tuple_update_schema_and_table,
          form,
          0,
          ForwardScanDirection,
          AccessShareLock,
          CurrentMemoryContext) > 0;
}
