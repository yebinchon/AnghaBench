
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_3__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int * Name ;
typedef int Datum ;
typedef int ChunkConstraints ;
typedef int ChunkConstraint ;


 int Anum_chunk_constraint_chunk_id ;
 int Anum_chunk_constraint_constraint_name ;
 int Anum_chunk_constraint_dimension_slice_id ;
 int Anum_chunk_constraint_hypertable_constraint_name ;
 size_t AttrNumberGetAttrOffset (int ) ;
 int CStringGetDatum (char*) ;
 scalar_t__ DatumGetInt32 (int ) ;
 int * DatumGetName (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int NameStr (int ) ;
 int Natts_chunk_constraint ;
 int * chunk_constraints_add (int *,scalar_t__,scalar_t__,int ,int ) ;
 int heap_deform_tuple (int ,int ,int *,int*) ;
 int namein ;

__attribute__((used)) static ChunkConstraint *
chunk_constraints_add_from_tuple(ChunkConstraints *ccs, TupleInfo *ti)
{
 bool nulls[Natts_chunk_constraint];
 Datum values[Natts_chunk_constraint];
 int32 dimension_slice_id;
 Name constraint_name;
 Name hypertable_constraint_name;

 heap_deform_tuple(ti->tuple, ti->desc, values, nulls);

 constraint_name =
  DatumGetName(values[AttrNumberGetAttrOffset(Anum_chunk_constraint_constraint_name)]);

 if (nulls[AttrNumberGetAttrOffset(Anum_chunk_constraint_dimension_slice_id)])
 {
  dimension_slice_id = 0;
  hypertable_constraint_name = DatumGetName(
   values[AttrNumberGetAttrOffset(Anum_chunk_constraint_hypertable_constraint_name)]);
 }
 else
 {
  dimension_slice_id = DatumGetInt32(
   values[AttrNumberGetAttrOffset(Anum_chunk_constraint_dimension_slice_id)]);
  hypertable_constraint_name = DatumGetName(DirectFunctionCall1(namein, CStringGetDatum("")));
 }

 return chunk_constraints_add(ccs,
         DatumGetInt32(values[AttrNumberGetAttrOffset(
          Anum_chunk_constraint_chunk_id)]),
         dimension_slice_id,
         NameStr(*constraint_name),
         NameStr(*hypertable_constraint_name));
}
