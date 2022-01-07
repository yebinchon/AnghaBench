
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int width; int height; } ;
typedef TYPE_1__ WebPBitstreamFeatures ;


 scalar_t__ GetFeatures (int const*,size_t,TYPE_1__*) ;
 scalar_t__ VP8_STATUS_OK ;

int WebPGetInfo(const uint8_t* data, size_t data_size,
                int* width, int* height) {
  WebPBitstreamFeatures features;

  if (GetFeatures(data, data_size, &features) != VP8_STATUS_OK) {
    return 0;
  }

  if (width != ((void*)0)) {
    *width = features.width;
  }
  if (height != ((void*)0)) {
    *height = features.height;
  }

  return 1;
}
