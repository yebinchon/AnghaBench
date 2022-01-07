
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ compressed_chunk_id; } ;
struct TYPE_5__ {int hypertable_relid; TYPE_1__ fd; } ;
typedef int Oid ;
typedef TYPE_2__ Chunk ;


 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 scalar_t__ INVALID_CHUNK_ID ;
 int NOTICE ;
 int compress_chunk_impl (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_rel_name (int ) ;
 TYPE_2__* ts_chunk_get_by_relid (int ,int ,int) ;

bool
tsl_compress_chunk_wrapper(Oid chunk_relid, bool if_not_compressed)
{
 Chunk *srcchunk = ts_chunk_get_by_relid(chunk_relid, 0, 1);
 if (srcchunk->fd.compressed_chunk_id != INVALID_CHUNK_ID)
 {
  ereport((if_not_compressed ? NOTICE : ERROR),
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("chunk \"%s\" is already compressed", get_rel_name(chunk_relid))));
  return 0;
 }

 compress_chunk_impl(srcchunk->hypertable_relid, chunk_relid);
 return 1;
}
