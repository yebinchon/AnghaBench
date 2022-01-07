
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* img_; } ;
typedef TYPE_2__ WebPMuxImage ;
struct TYPE_9__ {int duration; int bitstream; int id; int blend_method; int dispose_method; scalar_t__ y_offset; scalar_t__ x_offset; } ;
typedef TYPE_3__ WebPMuxFrameInfo ;
typedef int WebPMuxError ;
struct TYPE_7__ {int tag_; } ;


 int ChunkGetIdFromTag (int ) ;
 int SynthesizeBitstream (TYPE_2__ const* const,int *) ;
 int WEBP_MUX_BLEND ;
 int WEBP_MUX_DISPOSE_NONE ;

__attribute__((used)) static WebPMuxError MuxGetImageInternal(const WebPMuxImage* const wpi,
                                        WebPMuxFrameInfo* const info) {

  info->x_offset = 0;
  info->y_offset = 0;
  info->duration = 1;
  info->dispose_method = WEBP_MUX_DISPOSE_NONE;
  info->blend_method = WEBP_MUX_BLEND;

  info->id = ChunkGetIdFromTag(wpi->img_->tag_);
  return SynthesizeBitstream(wpi, &info->bitstream);
}
