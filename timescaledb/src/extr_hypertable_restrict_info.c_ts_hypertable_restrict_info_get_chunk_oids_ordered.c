
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* cube; int table_id; } ;
struct TYPE_11__ {TYPE_1__* space; } ;
struct TYPE_10__ {int ** slices; } ;
struct TYPE_9__ {scalar_t__ num_dimensions; int * dimensions; } ;
typedef int List ;
typedef int LOCKMODE ;
typedef int HypertableRestrictInfo ;
typedef TYPE_3__ Hypertable ;
typedef int DimensionSlice ;
typedef TYPE_4__ Chunk ;


 int Assert (int) ;
 int IS_OPEN_DIMENSION (int *) ;
 int * NIL ;
 int chunk_cmp ;
 int chunk_cmp_reverse ;
 TYPE_4__** hypertable_restrict_info_get_chunks (int *,TYPE_3__*,int ,unsigned int*) ;
 int * lappend (int *,int *) ;
 int * lappend_oid (int *,int ) ;
 int qsort (TYPE_4__**,unsigned int,int,int ) ;
 scalar_t__ ts_dimension_slice_cmp (int *,int *) ;

List *
ts_hypertable_restrict_info_get_chunk_oids_ordered(HypertableRestrictInfo *hri, Hypertable *ht,
               LOCKMODE lockmode, List **nested_oids,
               bool reverse)
{
 unsigned num_chunks;
 Chunk **chunks = hypertable_restrict_info_get_chunks(hri, ht, lockmode, &num_chunks);
 List *chunk_oids = NIL;
 List *slot_chunk_oids = NIL;
 DimensionSlice *slice = ((void*)0);
 unsigned int i;

 if (num_chunks == 0)
  return NIL;

 Assert(ht->space->num_dimensions > 0);
 Assert(IS_OPEN_DIMENSION(&ht->space->dimensions[0]));

 if (reverse)
  qsort(chunks, num_chunks, sizeof(Chunk *), chunk_cmp_reverse);
 else
  qsort(chunks, num_chunks, sizeof(Chunk *), chunk_cmp);

 for (i = 0; i < num_chunks; i++)
 {
  Chunk *chunk = chunks[i];

  if (((void*)0) != slice && ts_dimension_slice_cmp(slice, chunk->cube->slices[0]) != 0 &&
   slot_chunk_oids != NIL)
  {
   *nested_oids = lappend(*nested_oids, slot_chunk_oids);
   slot_chunk_oids = NIL;
  }

  if (((void*)0) != nested_oids)
   slot_chunk_oids = lappend_oid(slot_chunk_oids, chunk->table_id);

  chunk_oids = lappend_oid(chunk_oids, chunk->table_id);
  slice = chunk->cube->slices[0];
 }

 if (slot_chunk_oids != NIL)
  *nested_oids = lappend(*nested_oids, slot_chunk_oids);

 return chunk_oids;
}
