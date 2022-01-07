
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int const y_stride; int const uv_stride; int const width; int const height; int * v; int * u; int * y; } ;
typedef TYPE_2__ WebPPicture ;
struct TYPE_8__ {TYPE_2__* pic_; TYPE_1__* config_; } ;
typedef TYPE_3__ VP8Encoder ;
struct TYPE_9__ {int x_; int y_; int * yuv_out_; TYPE_3__* enc_; } ;
typedef TYPE_4__ VP8EncIterator ;
struct TYPE_6__ {scalar_t__ show_compressed; } ;


 int ExportBlock (int const* const,int * const,int const,int const,int const) ;
 int U_OFF_ENC ;
 int V_OFF_ENC ;
 int Y_OFF_ENC ;

void VP8IteratorExport(const VP8EncIterator* const it) {
  const VP8Encoder* const enc = it->enc_;
  if (enc->config_->show_compressed) {
    const int x = it->x_, y = it->y_;
    const uint8_t* const ysrc = it->yuv_out_ + Y_OFF_ENC;
    const uint8_t* const usrc = it->yuv_out_ + U_OFF_ENC;
    const uint8_t* const vsrc = it->yuv_out_ + V_OFF_ENC;
    const WebPPicture* const pic = enc->pic_;
    uint8_t* const ydst = pic->y + (y * pic->y_stride + x) * 16;
    uint8_t* const udst = pic->u + (y * pic->uv_stride + x) * 8;
    uint8_t* const vdst = pic->v + (y * pic->uv_stride + x) * 8;
    int w = (pic->width - x * 16);
    int h = (pic->height - y * 16);

    if (w > 16) w = 16;
    if (h > 16) h = 16;


    ExportBlock(ysrc, ydst, pic->y_stride, w, h);

    {
      const int uv_w = (w + 1) >> 1;
      const int uv_h = (h + 1) >> 1;
      ExportBlock(usrc, udst, pic->uv_stride, uv_w, uv_h);
      ExportBlock(vsrc, vdst, pic->uv_stride, uv_w, uv_h);
    }
  }
}
