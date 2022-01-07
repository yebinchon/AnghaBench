
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ WebPMuxError ;
struct TYPE_9__ {int unknown_; int xmp_; int exif_; int images_; int anim_; int iccp_; int vp8x_; } ;
typedef TYPE_1__ WebPMux ;
struct TYPE_10__ {size_t size; int * bytes; } ;
typedef TYPE_2__ WebPData ;


 size_t ChunkListDiskSize (int ) ;
 int * ChunkListEmit (int ,int *) ;
 scalar_t__ CreateVP8XChunk (TYPE_1__*) ;
 size_t ImageListDiskSize (int ) ;
 int * ImageListEmit (int ,int *) ;
 scalar_t__ MuxCleanup (TYPE_1__*) ;
 int * MuxEmitRiffHeader (int *,size_t) ;
 scalar_t__ MuxValidate (TYPE_1__*) ;
 size_t RIFF_HEADER_SIZE ;
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ;
 scalar_t__ WEBP_MUX_MEMORY_ERROR ;
 scalar_t__ WEBP_MUX_OK ;
 int WebPSafeFree (int *) ;
 scalar_t__ WebPSafeMalloc (unsigned long long,size_t) ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;

WebPMuxError WebPMuxAssemble(WebPMux* mux, WebPData* assembled_data) {
  size_t size = 0;
  uint8_t* data = ((void*)0);
  uint8_t* dst = ((void*)0);
  WebPMuxError err;

  if (assembled_data == ((void*)0)) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }

  memset(assembled_data, 0, sizeof(*assembled_data));

  if (mux == ((void*)0)) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }


  err = MuxCleanup(mux);
  if (err != WEBP_MUX_OK) return err;
  err = CreateVP8XChunk(mux);
  if (err != WEBP_MUX_OK) return err;


  size = ChunkListDiskSize(mux->vp8x_) + ChunkListDiskSize(mux->iccp_)
       + ChunkListDiskSize(mux->anim_) + ImageListDiskSize(mux->images_)
       + ChunkListDiskSize(mux->exif_) + ChunkListDiskSize(mux->xmp_)
       + ChunkListDiskSize(mux->unknown_) + RIFF_HEADER_SIZE;

  data = (uint8_t*)WebPSafeMalloc(1ULL, size);
  if (data == ((void*)0)) return WEBP_MUX_MEMORY_ERROR;


  dst = MuxEmitRiffHeader(data, size);
  dst = ChunkListEmit(mux->vp8x_, dst);
  dst = ChunkListEmit(mux->iccp_, dst);
  dst = ChunkListEmit(mux->anim_, dst);
  dst = ImageListEmit(mux->images_, dst);
  dst = ChunkListEmit(mux->exif_, dst);
  dst = ChunkListEmit(mux->xmp_, dst);
  dst = ChunkListEmit(mux->unknown_, dst);
  assert(dst == data + size);


  err = MuxValidate(mux);
  if (err != WEBP_MUX_OK) {
    WebPSafeFree(data);
    data = ((void*)0);
    size = 0;
  }


  assembled_data->bytes = data;
  assembled_data->size = size;

  return err;
}
