
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_5__* img_; TYPE_5__* alpha_; int height_; int width_; } ;
typedef TYPE_1__ WebPMuxImage ;
typedef int WebPMuxError ;
struct TYPE_8__ {size_t size; int * bytes; } ;
typedef TYPE_2__ WebPData ;
struct TYPE_9__ {int * next_; } ;


 int ALPHA_FLAG ;
 size_t CHUNK_HEADER_SIZE ;
 size_t const ChunkDiskSize (TYPE_5__*) ;
 int * ChunkListEmit (TYPE_5__*,int *) ;
 int * EmitVP8XChunk (int *,int ,int ,int ) ;
 int * MuxEmitRiffHeader (int * const,size_t const) ;
 size_t const RIFF_HEADER_SIZE ;
 size_t VP8X_CHUNK_SIZE ;
 int WEBP_MUX_MEMORY_ERROR ;
 int WEBP_MUX_OK ;
 scalar_t__ WebPSafeMalloc (unsigned long long,size_t const) ;
 int assert (int) ;

__attribute__((used)) static WebPMuxError SynthesizeBitstream(const WebPMuxImage* const wpi,
                                        WebPData* const bitstream) {
  uint8_t* dst;


  const int need_vp8x = (wpi->alpha_ != ((void*)0));
  const size_t vp8x_size = need_vp8x ? CHUNK_HEADER_SIZE + VP8X_CHUNK_SIZE : 0;
  const size_t alpha_size = need_vp8x ? ChunkDiskSize(wpi->alpha_) : 0;

  const size_t size = RIFF_HEADER_SIZE + vp8x_size + alpha_size +
                      ChunkDiskSize(wpi->img_);
  uint8_t* const data = (uint8_t*)WebPSafeMalloc(1ULL, size);
  if (data == ((void*)0)) return WEBP_MUX_MEMORY_ERROR;


  assert(wpi->alpha_ == ((void*)0) || wpi->alpha_->next_ == ((void*)0));
  assert(wpi->img_ != ((void*)0) && wpi->img_->next_ == ((void*)0));


  dst = MuxEmitRiffHeader(data, size);

  if (need_vp8x) {
    dst = EmitVP8XChunk(dst, wpi->width_, wpi->height_, ALPHA_FLAG);
    dst = ChunkListEmit(wpi->alpha_, dst);
  }


  dst = ChunkListEmit(wpi->img_, dst);
  assert(dst == data + size);


  bitstream->bytes = data;
  bitstream->size = size;
  return WEBP_MUX_OK;
}
