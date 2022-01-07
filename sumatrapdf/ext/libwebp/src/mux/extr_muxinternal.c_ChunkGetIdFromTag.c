
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int WebPChunkId ;
struct TYPE_2__ {scalar_t__ tag; int id; } ;


 scalar_t__ NIL_TAG ;
 int WEBP_CHUNK_UNKNOWN ;
 TYPE_1__* kChunks ;

WebPChunkId ChunkGetIdFromTag(uint32_t tag) {
  int i;
  for (i = 0; kChunks[i].tag != NIL_TAG; ++i) {
    if (tag == kChunks[i].tag) return kChunks[i].id;
  }
  return WEBP_CHUNK_UNKNOWN;
}
