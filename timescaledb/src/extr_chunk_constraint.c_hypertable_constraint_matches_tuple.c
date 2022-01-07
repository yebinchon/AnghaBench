
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int Datum ;


 int Anum_chunk_constraint_hypertable_constraint_name ;
 size_t AttrNumberGetAttrOffset (int ) ;
 int * DatumGetName (int ) ;
 char* NameStr (int ) ;
 int Natts_chunk_constraint ;
 int heap_deform_tuple (int ,int ,int *,int*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool
hypertable_constraint_matches_tuple(TupleInfo *ti, const char *hypertable_constraint_name)
{
 bool nulls[Natts_chunk_constraint];
 Datum values[Natts_chunk_constraint];
 const char *constrname;

 heap_deform_tuple(ti->tuple, ti->desc, values, nulls);

 if (nulls[AttrNumberGetAttrOffset(Anum_chunk_constraint_hypertable_constraint_name)])
  return 0;

 constrname = NameStr(*DatumGetName(
  values[AttrNumberGetAttrOffset(Anum_chunk_constraint_hypertable_constraint_name)]));

 if (strcmp(hypertable_constraint_name, constrname) == 0)
  return 1;

 return 0;
}
