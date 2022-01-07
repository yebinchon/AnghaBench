
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ tag; } ;
typedef int CHUNK_INDEX ;


 int IDX_UNKNOWN ;
 scalar_t__ NIL_TAG ;
 TYPE_1__* kChunks ;

CHUNK_INDEX ChunkGetIndexFromTag(uint32_t tag) {
  int i;
  for (i = 0; kChunks[i].tag != NIL_TAG; ++i) {
    if (tag == kChunks[i].tag) return (CHUNK_INDEX)i;
  }
  return IDX_UNKNOWN;
}
