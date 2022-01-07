
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {int stride; int * rgba; } ;
typedef TYPE_2__ WebPRGBABuffer ;
struct TYPE_12__ {TYPE_2__ RGBA; } ;
struct TYPE_14__ {scalar_t__ height; int colorspace; TYPE_1__ u; } ;
typedef TYPE_3__ WebPDecBuffer ;
struct TYPE_15__ {int width_; int last_row_; int last_out_row_; int height_; TYPE_3__* output_; scalar_t__ argb_cache_; TYPE_5__* io_; int * pixels_; } ;
typedef TYPE_4__ VP8LDecoder ;
struct TYPE_16__ {int crop_bottom; int width; int mb_h; int mb_w; scalar_t__ use_scaling; } ;
typedef TYPE_5__ VP8Io ;


 int ApplyInverseTransforms (TYPE_4__* const,int,int const,int const* const) ;
 int EmitRescaledRowsRGBA (TYPE_4__* const,int *,int const,int ,int * const,int) ;
 int const EmitRescaledRowsYUVA (TYPE_4__* const,int *,int const,int ) ;
 int EmitRows (int ,int *,int const,int ,int ,int * const,int) ;
 int const EmitRowsYUVA (TYPE_4__* const,int *,int const,int ,int ) ;
 int const NUM_ARGB_CACHE_ROWS ;
 int SetCropWindow (TYPE_5__* const,int,int,int **,int const) ;
 scalar_t__ WebPIsRGBMode (int ) ;
 int assert (int) ;

__attribute__((used)) static void ProcessRows(VP8LDecoder* const dec, int row) {
  const uint32_t* const rows = dec->pixels_ + dec->width_ * dec->last_row_;
  const int num_rows = row - dec->last_row_;

  assert(row <= dec->io_->crop_bottom);


  assert(num_rows <= NUM_ARGB_CACHE_ROWS);
  if (num_rows > 0) {
    VP8Io* const io = dec->io_;
    uint8_t* rows_data = (uint8_t*)dec->argb_cache_;
    const int in_stride = io->width * sizeof(uint32_t);
    ApplyInverseTransforms(dec, dec->last_row_, num_rows, rows);
    if (!SetCropWindow(io, dec->last_row_, row, &rows_data, in_stride)) {

    } else {
      const WebPDecBuffer* const output = dec->output_;
      if (WebPIsRGBMode(output->colorspace)) {
        const WebPRGBABuffer* const buf = &output->u.RGBA;
        uint8_t* const rgba = buf->rgba + dec->last_out_row_ * buf->stride;
        const int num_rows_out =

         io->use_scaling ?
            EmitRescaledRowsRGBA(dec, rows_data, in_stride, io->mb_h,
                                 rgba, buf->stride) :

            EmitRows(output->colorspace, rows_data, in_stride,
                     io->mb_w, io->mb_h, rgba, buf->stride);

        dec->last_out_row_ += num_rows_out;
      } else {
        dec->last_out_row_ = io->use_scaling ?
            EmitRescaledRowsYUVA(dec, rows_data, in_stride, io->mb_h) :
            EmitRowsYUVA(dec, rows_data, in_stride, io->mb_w, io->mb_h);
      }
      assert(dec->last_out_row_ <= output->height);
    }
  }


  dec->last_row_ = row;
  assert(dec->last_row_ <= dec->height_);
}
