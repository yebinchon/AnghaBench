
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int duration; int dispose_method; int x_offset; int y_offset; scalar_t__ blend_method; } ;
typedef TYPE_1__ WebPMuxFrameInfo ;
typedef int WebPMuxError ;
struct TYPE_7__ {int* bytes; size_t size; } ;
typedef TYPE_2__ WebPData ;
struct TYPE_8__ {size_t size; } ;


 size_t IDX_ANMF ;
 int PutLE24 (int*,int) ;
 int WEBP_MUX_DISPOSE_BACKGROUND ;
 int WEBP_MUX_MEMORY_ERROR ;
 scalar_t__ WEBP_MUX_NO_BLEND ;
 int WEBP_MUX_OK ;
 scalar_t__ WebPSafeMalloc (unsigned long long,size_t const) ;
 int assert (int) ;
 TYPE_3__* kChunks ;

__attribute__((used)) static WebPMuxError CreateFrameData(
    int width, int height, const WebPMuxFrameInfo* const info,
    WebPData* const frame) {
  uint8_t* frame_bytes;
  const size_t frame_size = kChunks[IDX_ANMF].size;

  assert(width > 0 && height > 0 && info->duration >= 0);
  assert(info->dispose_method == (info->dispose_method & 1));


  frame_bytes = (uint8_t*)WebPSafeMalloc(1ULL, frame_size);
  if (frame_bytes == ((void*)0)) return WEBP_MUX_MEMORY_ERROR;

  PutLE24(frame_bytes + 0, info->x_offset / 2);
  PutLE24(frame_bytes + 3, info->y_offset / 2);

  PutLE24(frame_bytes + 6, width - 1);
  PutLE24(frame_bytes + 9, height - 1);
  PutLE24(frame_bytes + 12, info->duration);
  frame_bytes[15] =
      (info->blend_method == WEBP_MUX_NO_BLEND ? 2 : 0) |
      (info->dispose_method == WEBP_MUX_DISPOSE_BACKGROUND ? 1 : 0);

  frame->bytes = frame_bytes;
  frame->size = frame_size;
  return WEBP_MUX_OK;
}
