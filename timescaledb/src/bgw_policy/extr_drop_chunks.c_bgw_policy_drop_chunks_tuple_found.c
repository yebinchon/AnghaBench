
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mctx; int desc; int tuple; } ;
typedef TYPE_2__ TupleInfo ;
struct TYPE_6__ {void* cascade_to_materializations; void* cascade; int older_than; void* hypertable_id; void* job_id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
typedef int ScanTupleResult ;
typedef int Datum ;
typedef TYPE_3__ BgwPolicyDropChunks ;


 int Anum_bgw_policy_drop_chunks_cascade ;
 int Anum_bgw_policy_drop_chunks_cascade_to_materializations ;
 int Anum_bgw_policy_drop_chunks_hypertable_id ;
 int Anum_bgw_policy_drop_chunks_job_id ;
 int Anum_bgw_policy_drop_chunks_older_than ;
 int Assert (int) ;
 size_t AttrNumberGetAttrOffset (int ) ;
 void* DatumGetBool (int ) ;
 void* DatumGetInt32 (int ) ;
 TYPE_3__* MemoryContextAllocZero (int ,int) ;
 int Natts_bgw_policy_drop_chunks ;
 int SCAN_CONTINUE ;
 int heap_deform_tuple (int ,int ,int *,int*) ;
 int * ts_interval_from_tuple (int ) ;

__attribute__((used)) static ScanTupleResult
bgw_policy_drop_chunks_tuple_found(TupleInfo *ti, void *const data)
{
 BgwPolicyDropChunks **policy = data;
 bool nulls[Natts_bgw_policy_drop_chunks];
 Datum values[Natts_bgw_policy_drop_chunks];




 heap_deform_tuple(ti->tuple, ti->desc, values, nulls);

 *policy = MemoryContextAllocZero(ti->mctx, sizeof(BgwPolicyDropChunks));
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_job_id)]);
 (*policy)->fd.job_id =
  DatumGetInt32(values[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_job_id)]);

 Assert(!nulls[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_hypertable_id)]);
 (*policy)->fd.hypertable_id =
  DatumGetInt32(values[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_hypertable_id)]);

 Assert(!nulls[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_older_than)]);

 (*policy)->fd.older_than = *ts_interval_from_tuple(
  values[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_older_than)]);

 Assert(!nulls[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_cascade)]);
 (*policy)->fd.cascade =
  DatumGetBool(values[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_cascade)]);

 Assert(
  !nulls[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_cascade_to_materializations)]);
 (*policy)->fd.cascade_to_materializations = DatumGetBool(
  values[AttrNumberGetAttrOffset(Anum_bgw_policy_drop_chunks_cascade_to_materializations)]);

 return SCAN_CONTINUE;
}
