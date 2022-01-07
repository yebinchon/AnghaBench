
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
struct TYPE_15__ {TYPE_5__* output; } ;
typedef TYPE_4__ WebPDecParams ;
struct TYPE_13__ {int * y; } ;
struct TYPE_12__ {int * rgba; } ;
struct TYPE_14__ {TYPE_2__ YUVA; TYPE_1__ RGBA; } ;
struct TYPE_16__ {int width; int height; TYPE_3__ u; int colorspace; } ;
typedef TYPE_5__ WebPDecBuffer ;
typedef int WEBP_CSP_MODE ;


 scalar_t__ DecodeInto (int const* const,size_t,TYPE_4__*) ;
 scalar_t__ VP8_STATUS_OK ;
 int WebPCopyDecBuffer (TYPE_5__*,TYPE_5__* const) ;
 int WebPGetInfo (int const* const,size_t,int*,int*) ;
 int WebPInitDecBuffer (TYPE_5__*) ;
 scalar_t__ WebPIsRGBMode (int ) ;
 int WebPResetDecParams (TYPE_4__*) ;

__attribute__((used)) static uint8_t* Decode(WEBP_CSP_MODE mode, const uint8_t* const data,
                       size_t data_size, int* const width, int* const height,
                       WebPDecBuffer* const keep_info) {
  WebPDecParams params;
  WebPDecBuffer output;

  WebPInitDecBuffer(&output);
  WebPResetDecParams(&params);
  params.output = &output;
  output.colorspace = mode;


  if (!WebPGetInfo(data, data_size, &output.width, &output.height)) {
    return ((void*)0);
  }
  if (width != ((void*)0)) *width = output.width;
  if (height != ((void*)0)) *height = output.height;


  if (DecodeInto(data, data_size, &params) != VP8_STATUS_OK) {
    return ((void*)0);
  }
  if (keep_info != ((void*)0)) {
    WebPCopyDecBuffer(&output, keep_info);
  }

  return WebPIsRGBMode(mode) ? output.u.RGBA.rgba : output.u.YUVA.y;
}
