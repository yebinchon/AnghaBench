
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_7__ {int parent_indexoid; } ;
struct TYPE_6__ {int hypertable_index_name; } ;
typedef int ScanFilterResult ;
typedef TYPE_2__ FormData_chunk_index ;
typedef TYPE_3__ ChunkIndexMapping ;


 scalar_t__ GETSTRUCT (int ) ;
 int SCAN_EXCLUDE ;
 int SCAN_INCLUDE ;
 char* get_rel_name (int ) ;
 scalar_t__ namestrcmp (int *,char const*) ;

__attribute__((used)) static ScanFilterResult
chunk_hypertable_index_name_filter(TupleInfo *ti, void *data)
{
 FormData_chunk_index *chunk_index = (FormData_chunk_index *) GETSTRUCT(ti->tuple);
 ChunkIndexMapping *cim = data;
 const char *hypertable_indexname = get_rel_name(cim->parent_indexoid);

 if (namestrcmp(&chunk_index->hypertable_index_name, hypertable_indexname) == 0)
  return SCAN_INCLUDE;

 return SCAN_EXCLUDE;
}
