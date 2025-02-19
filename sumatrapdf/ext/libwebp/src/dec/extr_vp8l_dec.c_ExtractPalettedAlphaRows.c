
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ type_; } ;
typedef TYPE_2__ VP8LTransform ;
struct TYPE_10__ {int last_row_; int const width_; int next_transform_; int last_out_row_; TYPE_2__* transforms_; scalar_t__ pixels_; TYPE_1__* io_; } ;
typedef TYPE_3__ VP8LDecoder ;
struct TYPE_11__ {scalar_t__ filter_; int * output_; } ;
struct TYPE_8__ {int crop_top; int crop_bottom; int width; scalar_t__ opaque; } ;
typedef TYPE_4__ ALPHDecoder ;


 int AlphaApplyFilter (TYPE_4__* const,int const,int,int *,int const) ;
 scalar_t__ COLOR_INDEXING_TRANSFORM ;
 int VP8LColorIndexInverseTransformAlpha (TYPE_2__* const,int const,int,int const* const,int *) ;
 scalar_t__ WEBP_FILTER_HORIZONTAL ;
 scalar_t__ WEBP_FILTER_NONE ;
 int assert (int) ;

__attribute__((used)) static void ExtractPalettedAlphaRows(VP8LDecoder* const dec, int last_row) {


  ALPHDecoder* const alph_dec = (ALPHDecoder*)dec->io_->opaque;
  const int top_row =
      (alph_dec->filter_ == WEBP_FILTER_NONE ||
       alph_dec->filter_ == WEBP_FILTER_HORIZONTAL) ? dec->io_->crop_top
                                                    : dec->last_row_;
  const int first_row = (dec->last_row_ < top_row) ? top_row : dec->last_row_;
  assert(last_row <= dec->io_->crop_bottom);
  if (last_row > first_row) {

    const int width = dec->io_->width;
    uint8_t* out = alph_dec->output_ + width * first_row;
    const uint8_t* const in =
      (uint8_t*)dec->pixels_ + dec->width_ * first_row;
    VP8LTransform* const transform = &dec->transforms_[0];
    assert(dec->next_transform_ == 1);
    assert(transform->type_ == COLOR_INDEXING_TRANSFORM);
    VP8LColorIndexInverseTransformAlpha(transform, first_row, last_row,
                                        in, out);
    AlphaApplyFilter(alph_dec, first_row, last_row, out, width);
  }
  dec->last_row_ = dec->last_out_row_ = last_row;
}
