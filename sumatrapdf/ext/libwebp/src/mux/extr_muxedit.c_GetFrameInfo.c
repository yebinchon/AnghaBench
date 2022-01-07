
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WebPMuxError ;
struct TYPE_5__ {size_t const size; scalar_t__ bytes; } ;
typedef TYPE_1__ WebPData ;
struct TYPE_6__ {scalar_t__ tag_; TYPE_1__ data_; } ;
typedef TYPE_2__ WebPChunk ;
struct TYPE_7__ {scalar_t__ tag; } ;


 size_t ANMF_CHUNK_SIZE ;
 int GetLE24 (scalar_t__) ;
 size_t IDX_ANMF ;
 int WEBP_MUX_INVALID_ARGUMENT ;
 int WEBP_MUX_OK ;
 int assert (int) ;
 TYPE_3__* kChunks ;

__attribute__((used)) static WebPMuxError GetFrameInfo(
    const WebPChunk* const frame_chunk,
    int* const x_offset, int* const y_offset, int* const duration) {
  const WebPData* const data = &frame_chunk->data_;
  const size_t expected_data_size = ANMF_CHUNK_SIZE;
  assert(frame_chunk->tag_ == kChunks[IDX_ANMF].tag);
  assert(frame_chunk != ((void*)0));
  if (data->size != expected_data_size) return WEBP_MUX_INVALID_ARGUMENT;

  *x_offset = 2 * GetLE24(data->bytes + 0);
  *y_offset = 2 * GetLE24(data->bytes + 3);
  *duration = GetLE24(data->bytes + 12);
  return WEBP_MUX_OK;
}
