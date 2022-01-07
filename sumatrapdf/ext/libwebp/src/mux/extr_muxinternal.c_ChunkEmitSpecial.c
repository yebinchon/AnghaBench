
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t const uint32_t ;
struct TYPE_6__ {size_t size; int bytes; } ;
struct TYPE_7__ {scalar_t__ tag_; TYPE_1__ data_; } ;
typedef TYPE_2__ WebPChunk ;
struct TYPE_8__ {scalar_t__ tag; } ;


 size_t CHUNK_HEADER_SIZE ;
 int ChunkDiskSize (TYPE_2__ const* const) ;
 size_t IDX_ANMF ;
 int PutLE32 (scalar_t__*,size_t const) ;
 int TAG_SIZE ;
 int assert (int) ;
 TYPE_3__* kChunks ;
 int memcpy (scalar_t__*,int ,size_t const) ;

__attribute__((used)) static uint8_t* ChunkEmitSpecial(const WebPChunk* const header,
                                 size_t total_size, uint8_t* dst) {
  const size_t header_size = header->data_.size;
  const size_t offset_to_next = total_size - CHUNK_HEADER_SIZE;
  assert(header->tag_ == kChunks[IDX_ANMF].tag);
  PutLE32(dst + 0, header->tag_);
  PutLE32(dst + TAG_SIZE, (uint32_t)offset_to_next);
  assert(header_size == (uint32_t)header_size);
  memcpy(dst + CHUNK_HEADER_SIZE, header->data_.bytes, header_size);
  if (header_size & 1) {
    dst[CHUNK_HEADER_SIZE + header_size] = 0;
  }
  return dst + ChunkDiskSize(header);
}
