
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_3__ {void* compressed_hypertable_id; int compressed; int chunk_target_size; int chunk_sizing_func_name; int chunk_sizing_func_schema; int num_dimensions; int associated_table_prefix; int associated_schema_name; int table_name; int schema_name; void* id; } ;
typedef int HeapTuple ;
typedef TYPE_1__ FormData_hypertable ;
typedef int Datum ;


 int Anum_hypertable_associated_schema_name ;
 int Anum_hypertable_associated_table_prefix ;
 int Anum_hypertable_chunk_sizing_func_name ;
 int Anum_hypertable_chunk_sizing_func_schema ;
 int Anum_hypertable_chunk_target_size ;
 int Anum_hypertable_compressed ;
 int Anum_hypertable_compressed_hypertable_id ;
 int Anum_hypertable_id ;
 int Anum_hypertable_num_dimensions ;
 int Anum_hypertable_schema_name ;
 int Anum_hypertable_table_name ;
 int Assert (int) ;
 size_t AttrNumberGetAttrOffset (int ) ;
 int DatumGetBool (int ) ;
 int DatumGetInt16 (int ) ;
 void* DatumGetInt32 (int ) ;
 int DatumGetInt64 (int ) ;
 int DatumGetName (int ) ;
 void* INVALID_HYPERTABLE_ID ;
 int NAMEDATALEN ;
 int Natts_hypertable ;
 int heap_deform_tuple (int const,int const,int *,int*) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void
hypertable_formdata_fill(FormData_hypertable *fd, const HeapTuple tuple, const TupleDesc desc)
{
 bool nulls[Natts_hypertable];
 Datum values[Natts_hypertable];

 heap_deform_tuple(tuple, desc, values, nulls);

 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_id)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_schema_name)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_table_name)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_associated_schema_name)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_associated_table_prefix)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_num_dimensions)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_chunk_sizing_func_schema)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_chunk_sizing_func_name)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_chunk_target_size)]);
 Assert(!nulls[AttrNumberGetAttrOffset(Anum_hypertable_compressed)]);

 fd->id = DatumGetInt32(values[AttrNumberGetAttrOffset(Anum_hypertable_id)]);
 memcpy(&fd->schema_name,
     DatumGetName(values[AttrNumberGetAttrOffset(Anum_hypertable_schema_name)]),
     NAMEDATALEN);
 memcpy(&fd->table_name,
     DatumGetName(values[AttrNumberGetAttrOffset(Anum_hypertable_table_name)]),
     NAMEDATALEN);
 memcpy(&fd->associated_schema_name,
     DatumGetName(values[AttrNumberGetAttrOffset(Anum_hypertable_associated_schema_name)]),
     NAMEDATALEN);
 memcpy(&fd->associated_table_prefix,
     DatumGetName(values[AttrNumberGetAttrOffset(Anum_hypertable_associated_table_prefix)]),
     NAMEDATALEN);

 fd->num_dimensions =
  DatumGetInt16(values[AttrNumberGetAttrOffset(Anum_hypertable_num_dimensions)]);

 memcpy(&fd->chunk_sizing_func_schema,
     DatumGetName(values[AttrNumberGetAttrOffset(Anum_hypertable_chunk_sizing_func_schema)]),
     NAMEDATALEN);
 memcpy(&fd->chunk_sizing_func_name,
     DatumGetName(values[AttrNumberGetAttrOffset(Anum_hypertable_chunk_sizing_func_name)]),
     NAMEDATALEN);

 fd->chunk_target_size =
  DatumGetInt64(values[AttrNumberGetAttrOffset(Anum_hypertable_chunk_target_size)]);
 fd->compressed = DatumGetBool(values[AttrNumberGetAttrOffset(Anum_hypertable_compressed)]);

 if (nulls[AttrNumberGetAttrOffset(Anum_hypertable_compressed_hypertable_id)])
  fd->compressed_hypertable_id = INVALID_HYPERTABLE_ID;
 else
  fd->compressed_hypertable_id = DatumGetInt32(
   values[AttrNumberGetAttrOffset(Anum_hypertable_compressed_hypertable_id)]);
}
