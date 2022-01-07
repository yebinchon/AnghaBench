
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_24__ {int* tts_isnull; int * tts_values; } ;
typedef TYPE_5__ TupleTableSlot ;
struct TYPE_23__ {int isnull; int value; } ;
struct TYPE_22__ {TYPE_10__* iterator; } ;
struct TYPE_27__ {int type; TYPE_4__ segmentby; int attno; TYPE_3__ compressed; } ;
struct TYPE_20__ {TYPE_5__* ss_ScanTupleSlot; } ;
struct TYPE_21__ {int custom_ps; TYPE_1__ ss; } ;
struct TYPE_26__ {int initialized; int num_columns; int counter; TYPE_8__* columns; TYPE_2__ csstate; } ;
struct TYPE_25__ {int is_null; int val; int is_done; } ;
struct TYPE_19__ {TYPE_6__ (* try_next ) (TYPE_10__*) ;} ;
typedef TYPE_6__ DecompressResult ;
typedef TYPE_7__ DecompressChunkState ;
typedef TYPE_8__ DecompressChunkColumnState ;
typedef size_t AttrNumber ;


 size_t AttrNumberGetAttrOffset (int ) ;


 int ERROR ;
 int ExecClearTuple (TYPE_5__*) ;
 TYPE_5__* ExecProcNode (int ) ;
 int ExecStoreVirtualTuple (TYPE_5__*) ;


 scalar_t__ TupIsNull (TYPE_5__*) ;
 int elog (int ,char*) ;
 int initialize_batch (TYPE_7__*,TYPE_5__*) ;
 int linitial (int ) ;
 TYPE_6__ stub1 (TYPE_10__*) ;

__attribute__((used)) static TupleTableSlot *
decompress_chunk_create_tuple(DecompressChunkState *state)
{
 TupleTableSlot *slot = state->csstate.ss.ss_ScanTupleSlot;
 bool batch_done = 0;
 int i;

 while (1)
 {
  if (!state->initialized)
  {
   TupleTableSlot *subslot = ExecProcNode(linitial(state->csstate.custom_ps));

   if (TupIsNull(subslot))
    return ((void*)0);

   batch_done = 0;
   initialize_batch(state, subslot);
  }

  ExecClearTuple(slot);

  for (i = 0; i < state->num_columns; i++)
  {
   DecompressChunkColumnState *column = &state->columns[i];
   switch (column->type)
   {
    case 130:
     if (state->counter <= 0)





      batch_done = 1;
     else
      state->counter--;
     break;
    case 131:
    {
     AttrNumber attr = AttrNumberGetAttrOffset(column->attno);

     if (column->compressed.iterator != ((void*)0))
     {
      DecompressResult result;
      result = column->compressed.iterator->try_next(column->compressed.iterator);

      if (result.is_done)
      {
       batch_done = 1;
       continue;
      }
      else if (batch_done)
      {





       elog(ERROR, "compressed column out of sync with batch counter");
      }

      slot->tts_values[attr] = result.val;
      slot->tts_isnull[attr] = result.is_null;
     }
     else
      slot->tts_isnull[attr] = 1;

     break;
    }
    case 129:
    {
     AttrNumber attr = AttrNumberGetAttrOffset(column->attno);

     slot->tts_values[attr] = column->segmentby.value;
     slot->tts_isnull[attr] = column->segmentby.isnull;
     break;
    }
    case 128:




     break;
   }
  }

  if (batch_done)
  {
   state->initialized = 0;
   continue;
  }

  ExecStoreVirtualTuple(slot);

  return slot;
 }
}
