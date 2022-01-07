
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vp8_frm_hdr ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int width; int height; int (* writer ) (int*,int,TYPE_1__ const* const) ;} ;
typedef TYPE_1__ WebPPicture ;
typedef int WebPEncodingError ;


 int VP8_ENC_ERROR_BAD_WRITE ;
 int VP8_ENC_ERROR_PARTITION0_OVERFLOW ;
 int VP8_ENC_OK ;
 int VP8_FRAME_HEADER_SIZE ;
 size_t VP8_MAX_PARTITION0_SIZE ;
 int VP8_SIGNATURE ;
 int stub1 (int*,int,TYPE_1__ const* const) ;

__attribute__((used)) static WebPEncodingError PutVP8FrameHeader(const WebPPicture* const pic,
                                           int profile, size_t size0) {
  uint8_t vp8_frm_hdr[VP8_FRAME_HEADER_SIZE];
  uint32_t bits;

  if (size0 >= VP8_MAX_PARTITION0_SIZE) {
    return VP8_ENC_ERROR_PARTITION0_OVERFLOW;
  }


  bits = 0
       | (profile << 1)
       | (1 << 4)
       | ((uint32_t)size0 << 5);
  vp8_frm_hdr[0] = (bits >> 0) & 0xff;
  vp8_frm_hdr[1] = (bits >> 8) & 0xff;
  vp8_frm_hdr[2] = (bits >> 16) & 0xff;

  vp8_frm_hdr[3] = (VP8_SIGNATURE >> 16) & 0xff;
  vp8_frm_hdr[4] = (VP8_SIGNATURE >> 8) & 0xff;
  vp8_frm_hdr[5] = (VP8_SIGNATURE >> 0) & 0xff;

  vp8_frm_hdr[6] = pic->width & 0xff;
  vp8_frm_hdr[7] = pic->width >> 8;
  vp8_frm_hdr[8] = pic->height & 0xff;
  vp8_frm_hdr[9] = pic->height >> 8;

  if (!pic->writer(vp8_frm_hdr, sizeof(vp8_frm_hdr), pic)) {
    return VP8_ENC_ERROR_BAD_WRITE;
  }
  return VP8_ENC_OK;
}
