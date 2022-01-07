
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int chunk_relid; } ;
typedef int Oid ;
typedef int CustomScanState ;
typedef TYPE_1__ CompressChunkDmlState ;


 int ERROR ;
 int elog (int ,char*,int ) ;
 int get_rel_name (int ) ;

__attribute__((used)) static TupleTableSlot *
compress_chunk_dml_exec(CustomScanState *node)
{
 CompressChunkDmlState *state = (CompressChunkDmlState *) node;
 Oid chunk_relid = state->chunk_relid;
 elog(ERROR,
   "cannot update/delete rows from chunk \"%s\" as it is compressed",
   get_rel_name(chunk_relid));
 return ((void*)0);
}
