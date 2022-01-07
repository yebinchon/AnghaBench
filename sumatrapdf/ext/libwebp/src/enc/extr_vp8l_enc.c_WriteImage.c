
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int (* writer ) (int const*,int,TYPE_1__ const* const) ;} ;
typedef TYPE_1__ WebPPicture ;
typedef scalar_t__ WebPEncodingError ;
typedef int VP8LBitWriter ;


 size_t const CHUNK_HEADER_SIZE ;
 size_t const TAG_SIZE ;
 int * VP8LBitWriterFinish (int * const) ;
 size_t VP8LBitWriterNumBytes (int * const) ;
 size_t const VP8L_SIGNATURE_SIZE ;
 scalar_t__ VP8_ENC_ERROR_BAD_WRITE ;
 scalar_t__ VP8_ENC_OK ;
 scalar_t__ WriteRiffHeader (TYPE_1__ const* const,size_t const,size_t const) ;
 int stub1 (int const* const,size_t const,TYPE_1__ const* const) ;
 int stub2 (int const*,int,TYPE_1__ const* const) ;

__attribute__((used)) static WebPEncodingError WriteImage(const WebPPicture* const pic,
                                    VP8LBitWriter* const bw,
                                    size_t* const coded_size) {
  WebPEncodingError err = VP8_ENC_OK;
  const uint8_t* const webpll_data = VP8LBitWriterFinish(bw);
  const size_t webpll_size = VP8LBitWriterNumBytes(bw);
  const size_t vp8l_size = VP8L_SIGNATURE_SIZE + webpll_size;
  const size_t pad = vp8l_size & 1;
  const size_t riff_size = TAG_SIZE + CHUNK_HEADER_SIZE + vp8l_size + pad;

  err = WriteRiffHeader(pic, riff_size, vp8l_size);
  if (err != VP8_ENC_OK) goto Error;

  if (!pic->writer(webpll_data, webpll_size, pic)) {
    err = VP8_ENC_ERROR_BAD_WRITE;
    goto Error;
  }

  if (pad) {
    const uint8_t pad_byte[1] = { 0 };
    if (!pic->writer(pad_byte, 1, pic)) {
      err = VP8_ENC_ERROR_BAD_WRITE;
      goto Error;
    }
  }
  *coded_size = CHUNK_HEADER_SIZE + riff_size;
  return VP8_ENC_OK;

 Error:
  return err;
}
