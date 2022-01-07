
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_13__ {int width; int crop_bottom; int const crop_top; int crop_left; int crop_right; } ;
typedef TYPE_1__ VP8Io ;
struct TYPE_14__ {scalar_t__ alpha_dithering_; int const* alpha_plane_; TYPE_8__* alph_dec_; scalar_t__ is_alpha_decoded_; int alpha_data_size_; int alpha_data_; } ;
typedef TYPE_2__ VP8Decoder ;
struct TYPE_15__ {scalar_t__ pre_processing_; } ;


 scalar_t__ ALPHA_PREPROCESSED_LEVELS ;
 int ALPHDecode (TYPE_2__* const,int,int) ;
 int ALPHDelete (TYPE_8__*) ;
 int ALPHInit (TYPE_8__*,int ,int ,TYPE_1__ const* const,int const*) ;
 TYPE_8__* ALPHNew () ;
 int AllocateAlphaPlane (TYPE_2__* const,TYPE_1__ const* const) ;
 int WebPDeallocateAlphaMemory (TYPE_2__* const) ;
 int WebPDequantizeLevels (int const* const,int,int,int const,scalar_t__) ;
 int assert (int) ;

const uint8_t* VP8DecompressAlphaRows(VP8Decoder* const dec,
                                      const VP8Io* const io,
                                      int row, int num_rows) {
  const int width = io->width;
  const int height = io->crop_bottom;

  assert(dec != ((void*)0) && io != ((void*)0));

  if (row < 0 || num_rows <= 0 || row + num_rows > height) {
    return ((void*)0);
  }

  if (!dec->is_alpha_decoded_) {
    if (dec->alph_dec_ == ((void*)0)) {
      dec->alph_dec_ = ALPHNew();
      if (dec->alph_dec_ == ((void*)0)) return ((void*)0);
      if (!AllocateAlphaPlane(dec, io)) goto Error;
      if (!ALPHInit(dec->alph_dec_, dec->alpha_data_, dec->alpha_data_size_,
                    io, dec->alpha_plane_)) {
        goto Error;
      }

      if (dec->alph_dec_->pre_processing_ != ALPHA_PREPROCESSED_LEVELS) {
        dec->alpha_dithering_ = 0;
      } else {
        num_rows = height - row;
      }
    }

    assert(dec->alph_dec_ != ((void*)0));
    assert(row + num_rows <= height);
    if (!ALPHDecode(dec, row, num_rows)) goto Error;

    if (dec->is_alpha_decoded_) {
      ALPHDelete(dec->alph_dec_);
      dec->alph_dec_ = ((void*)0);
      if (dec->alpha_dithering_ > 0) {
        uint8_t* const alpha = dec->alpha_plane_ + io->crop_top * width
                             + io->crop_left;
        if (!WebPDequantizeLevels(alpha,
                                  io->crop_right - io->crop_left,
                                  io->crop_bottom - io->crop_top,
                                  width, dec->alpha_dithering_)) {
          goto Error;
        }
      }
    }
  }


  return dec->alpha_plane_ + row * width;

 Error:
  WebPDeallocateAlphaMemory(dec);
  return ((void*)0);
}
