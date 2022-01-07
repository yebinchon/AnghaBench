
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int size; int * bytes; } ;
typedef TYPE_1__ MetadataPayload ;


 scalar_t__ kChunkHeaderSize ;

__attribute__((used)) static int UpdateFlagsAndSize(const MetadataPayload* const payload,
                              int keep, int flag,
                              uint32_t* vp8x_flags, uint64_t* metadata_size) {
  if (keep && payload->bytes != ((void*)0) && payload->size > 0) {
    *vp8x_flags |= flag;
    *metadata_size += kChunkHeaderSize + payload->size + (payload->size & 1);
    return 1;
  }
  return 0;
}
