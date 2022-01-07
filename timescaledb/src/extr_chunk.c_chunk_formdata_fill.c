
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_3__ {void* compressed_chunk_id; int table_name; int schema_name; void* hypertable_id; void* id; } ;
typedef int HeapTuple ;
typedef TYPE_1__ FormData_chunk ;
typedef int Datum ;


 int Anum_chunk_compressed_chunk_id ;
 int Anum_chunk_hypertable_id ;
 int Anum_chunk_id ;
 int Anum_chunk_schema_name ;
 int Anum_chunk_table_name ;
 int Assert (int) ;
 size_t AttrNumberGetAttrOffset (int ) ;
 void* DatumGetInt32 (int ) ;
 int DatumGetName (int ) ;
 void* INVALID_CHUNK_ID ;
 int NAMEDATALEN ;
 int Natts_chunk ;
 int heap_deform_tuple (int const,int const,int *,int*) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void
chunk_formdata_fill(FormData_chunk *fd, const HeapTuple tuple, const TupleDesc desc)
{
 bool nulls[Natts_chunk];
 Datum values[Natts_chunk];

 heap_deform_tuple(tuple, desc, values, nulls);

 Assert(!nulls[AttrNumberGetAttrOffset(Anum_chunk_id)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_chunk_hypertable_id)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_chunk_schema_name)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_chunk_table_name)]);

 fd->id = DatumGetInt32(values[AttrNumberGetAttrOffset(Anum_chunk_id)]);
 fd->hypertable_id = DatumGetInt32(values[AttrNumberGetAttrOffset(Anum_chunk_hypertable_id)]);
 memcpy(&fd->schema_name,
     DatumGetName(values[AttrNumberGetAttrOffset(Anum_chunk_schema_name)]),
     NAMEDATALEN);
 memcpy(&fd->table_name,
     DatumGetName(values[AttrNumberGetAttrOffset(Anum_chunk_table_name)]),
     NAMEDATALEN);

 if (nulls[AttrNumberGetAttrOffset(Anum_chunk_compressed_chunk_id)])
  fd->compressed_chunk_id = INVALID_CHUNK_ID;
 else
  fd->compressed_chunk_id =
   DatumGetInt32(values[AttrNumberGetAttrOffset(Anum_chunk_compressed_chunk_id)]);
}
