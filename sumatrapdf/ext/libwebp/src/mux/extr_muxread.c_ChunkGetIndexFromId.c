
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ WebPChunkId ;
struct TYPE_2__ {scalar_t__ id; } ;
typedef int CHUNK_INDEX ;


 int IDX_NIL ;
 scalar_t__ WEBP_CHUNK_NIL ;
 TYPE_1__* kChunks ;

__attribute__((used)) static CHUNK_INDEX ChunkGetIndexFromId(WebPChunkId id) {
  int i;
  for (i = 0; kChunks[i].id != WEBP_CHUNK_NIL; ++i) {
    if (id == kChunks[i].id) return (CHUNK_INDEX)i;
  }
  return IDX_NIL;
}
