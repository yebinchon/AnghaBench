
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hypertable_constraint_name; int constraint_name; int dimension_slice_id; int chunk_id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef int Datum ;
typedef TYPE_2__ ChunkConstraint ;


 int Anum_chunk_constraint_chunk_id ;
 int Anum_chunk_constraint_constraint_name ;
 int Anum_chunk_constraint_dimension_slice_id ;
 int Anum_chunk_constraint_hypertable_constraint_name ;
 size_t AttrNumberGetAttrOffset (int ) ;
 int Int32GetDatum (int ) ;
 int NameGetDatum (int *) ;
 int Natts_chunk_constraint ;
 scalar_t__ is_dimension_constraint (TYPE_2__*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
chunk_constraint_fill_tuple_values(ChunkConstraint *cc, Datum values[Natts_chunk_constraint],
           bool nulls[Natts_chunk_constraint])
{
 memset(values, 0, sizeof(Datum) * Natts_chunk_constraint);
 values[AttrNumberGetAttrOffset(Anum_chunk_constraint_chunk_id)] =
  Int32GetDatum(cc->fd.chunk_id);
 values[AttrNumberGetAttrOffset(Anum_chunk_constraint_dimension_slice_id)] =
  Int32GetDatum(cc->fd.dimension_slice_id);
 values[AttrNumberGetAttrOffset(Anum_chunk_constraint_constraint_name)] =
  NameGetDatum(&cc->fd.constraint_name);
 values[AttrNumberGetAttrOffset(Anum_chunk_constraint_hypertable_constraint_name)] =
  NameGetDatum(&cc->fd.hypertable_constraint_name);

 if (is_dimension_constraint(cc))
  nulls[AttrNumberGetAttrOffset(Anum_chunk_constraint_hypertable_constraint_name)] = 1;
 else
  nulls[AttrNumberGetAttrOffset(Anum_chunk_constraint_dimension_slice_id)] = 1;
}
