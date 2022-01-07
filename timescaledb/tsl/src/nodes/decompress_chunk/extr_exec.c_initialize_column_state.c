
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_16__ {int attno; int type; int typid; } ;
struct TYPE_15__ {int num_columns; int hypertable_compression_info; TYPE_6__* columns; int varattno_map; } ;
struct TYPE_14__ {scalar_t__ segmentby_column_index; } ;
struct TYPE_13__ {int atttypid; int attname; } ;
struct TYPE_12__ {TYPE_1__* ss_ScanTupleSlot; } ;
struct TYPE_11__ {int tts_tupleDescriptor; } ;
typedef TYPE_2__ ScanState ;
typedef int ListCell ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_4__ FormData_hypertable_compression ;
typedef TYPE_5__ DecompressChunkState ;
typedef TYPE_6__ DecompressChunkColumnState ;


 int AttrNumberGetAttrOffset (int) ;
 int COMPRESSED_COLUMN ;
 int COUNT_COLUMN ;


 int ERROR ;
 int NameStr (int ) ;
 int SEGMENTBY_COLUMN ;
 int SEQUENCE_NUM_COLUMN ;
 TYPE_3__* TupleDescAttr (int ,int ) ;
 int elog (int ,char*,int) ;
 TYPE_4__* get_column_compressioninfo (int ,int ) ;
 int lfirst_int (int *) ;
 int * list_head (int ) ;
 int list_length (int ) ;
 int * lnext (int *) ;
 TYPE_6__* palloc0 (int) ;

__attribute__((used)) static void
initialize_column_state(DecompressChunkState *state)
{
 ScanState *ss = (ScanState *) state;
 TupleDesc desc = ss->ss_ScanTupleSlot->tts_tupleDescriptor;
 ListCell *lc;
 int i;

 state->num_columns = list_length(state->varattno_map);

 state->columns = palloc0(state->num_columns * sizeof(DecompressChunkColumnState));

 for (i = 0, lc = list_head(state->varattno_map); i < state->num_columns; lc = lnext(lc), i++)
 {
  DecompressChunkColumnState *column = &state->columns[i];
  column->attno = lfirst_int(lc);

  if (column->attno > 0)
  {

   Form_pg_attribute attribute =
    TupleDescAttr(desc, AttrNumberGetAttrOffset(lfirst_int(lc)));
   FormData_hypertable_compression *ht_info =
    get_column_compressioninfo(state->hypertable_compression_info,
             NameStr(attribute->attname));

   column->typid = attribute->atttypid;

   if (ht_info->segmentby_column_index > 0)
    column->type = SEGMENTBY_COLUMN;
   else
    column->type = COMPRESSED_COLUMN;
  }
  else
  {

   switch (column->attno)
   {
    case 129:
     column->type = COUNT_COLUMN;
     break;
    case 128:
     column->type = SEQUENCE_NUM_COLUMN;
     break;
    default:
     elog(ERROR, "Invalid column attno \"%d\"", column->attno);
     break;
   }
  }
 }
}
