
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int use_argb; int * custom_ptr; int writer; } ;
typedef TYPE_1__ WebPPicture ;
typedef int WebPMemoryWriter ;
typedef int WebPConfig ;


 int WebPEncode (int const* const,TYPE_1__* const) ;
 int WebPMemoryWrite ;

__attribute__((used)) static int EncodeFrame(const WebPConfig* const config, WebPPicture* const pic,
                       WebPMemoryWriter* const memory) {
  pic->use_argb = 1;
  pic->writer = WebPMemoryWrite;
  pic->custom_ptr = memory;
  if (!WebPEncode(config, pic)) {
    return 0;
  }
  return 1;
}
