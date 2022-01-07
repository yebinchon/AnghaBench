
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_6__ {void* orderby_nullsfirst; void* orderby_asc; void* orderby_column_index; void* segmentby_column_index; void* algo_id; int attname; int hypertable_id; } ;
typedef TYPE_2__ FormData_hypertable_compression ;
typedef int Datum ;


 int Anum_hypertable_compression_algo_id ;
 int Anum_hypertable_compression_attname ;
 int Anum_hypertable_compression_hypertable_id ;
 int Anum_hypertable_compression_orderby_asc ;
 int Anum_hypertable_compression_orderby_column_index ;
 int Anum_hypertable_compression_orderby_nullsfirst ;
 int Anum_hypertable_compression_segmentby_column_index ;
 int Assert (int) ;
 size_t AttrNumberGetAttrOffset (int ) ;
 void* BoolGetDatum (int ) ;
 void* DatumGetInt16 (int ) ;
 int DatumGetInt32 (int ) ;
 int DatumGetName (int ) ;
 int NAMEDATALEN ;
 int Natts_hypertable_compression ;
 int heap_deform_tuple (int ,int ,int *,int*) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void
hypertable_compression_fill_from_tuple(FormData_hypertable_compression *fd, TupleInfo *ti)
{
 Datum values[Natts_hypertable_compression];
 bool isnulls[Natts_hypertable_compression];

 heap_deform_tuple(ti->tuple, ti->desc, values, isnulls);

 Assert(!isnulls[AttrNumberGetAttrOffset(Anum_hypertable_compression_hypertable_id)]);
 Assert(!isnulls[AttrNumberGetAttrOffset(Anum_hypertable_compression_attname)]);
 Assert(!isnulls[AttrNumberGetAttrOffset(Anum_hypertable_compression_algo_id)]);

 fd->hypertable_id =
  DatumGetInt32(values[AttrNumberGetAttrOffset(Anum_hypertable_compression_hypertable_id)]);
 memcpy(&fd->attname,
     DatumGetName(values[AttrNumberGetAttrOffset(Anum_hypertable_compression_attname)]),
     NAMEDATALEN);
 fd->algo_id =
  DatumGetInt16(values[AttrNumberGetAttrOffset(Anum_hypertable_compression_algo_id)]);

 if (isnulls[AttrNumberGetAttrOffset(Anum_hypertable_compression_segmentby_column_index)])
  fd->segmentby_column_index = 0;
 else
  fd->segmentby_column_index = DatumGetInt16(
   values[AttrNumberGetAttrOffset(Anum_hypertable_compression_segmentby_column_index)]);

 if (isnulls[AttrNumberGetAttrOffset(Anum_hypertable_compression_orderby_column_index)])
  fd->orderby_column_index = 0;
 else
 {
  Assert(!isnulls[AttrNumberGetAttrOffset(Anum_hypertable_compression_orderby_asc)]);
  Assert(!isnulls[AttrNumberGetAttrOffset(Anum_hypertable_compression_orderby_nullsfirst)]);

  fd->orderby_column_index = DatumGetInt16(
   values[AttrNumberGetAttrOffset(Anum_hypertable_compression_orderby_column_index)]);
  fd->orderby_asc =
   BoolGetDatum(values[AttrNumberGetAttrOffset(Anum_hypertable_compression_orderby_asc)]);
  fd->orderby_nullsfirst = BoolGetDatum(
   values[AttrNumberGetAttrOffset(Anum_hypertable_compression_orderby_nullsfirst)]);
 }
}
