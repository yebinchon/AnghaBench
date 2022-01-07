
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ error_code; } ;
typedef TYPE_1__ WebPPicture ;
typedef scalar_t__ WebPEncodingError ;


 int VP8_ENC_ERROR_LAST ;
 int VP8_ENC_OK ;
 int assert (int) ;

int WebPEncodingSetError(const WebPPicture* const pic,
                         WebPEncodingError error) {
  assert((int)error < VP8_ENC_ERROR_LAST);
  assert((int)error >= VP8_ENC_OK);
  ((WebPPicture*)pic)->error_code = error;
  return 0;
}
