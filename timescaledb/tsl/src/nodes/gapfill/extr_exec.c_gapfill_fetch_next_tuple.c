
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int gapfill_typid; int subslot_time; int time_index; int * subslot; } ;
typedef TYPE_1__ GapFillState ;
typedef int Datum ;
typedef int CustomScanState ;


 int AttrOffsetGetAttrNumber (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * fetch_subplan_tuple (int *) ;
 int gapfill_datum_get_internal (int ,int ) ;
 int slot_getattr (int *,int ,int*) ;

__attribute__((used)) static TupleTableSlot *
gapfill_fetch_next_tuple(GapFillState *state)
{
 Datum time_value;
 bool isnull;
 TupleTableSlot *subslot = fetch_subplan_tuple((CustomScanState *) state);

 if (!subslot)
  return ((void*)0);

 state->subslot = subslot;
 time_value = slot_getattr(subslot, AttrOffsetGetAttrNumber(state->time_index), &isnull);
 if (isnull)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid time_bucket_gapfill argument: ts cannot be NULL")));

 state->subslot_time = gapfill_datum_get_internal(time_value, state->gapfill_typid);

 return subslot;
}
