
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int format; int has_animation; int has_alpha; int height; int width; } ;
typedef TYPE_1__ WebPBitstreamFeatures ;
typedef int VP8StatusCode ;


 int DefaultFeatures (TYPE_1__* const) ;
 int ParseHeadersInternal (int const* const,size_t,int *,int *,int *,int *,int *,int *) ;
 int VP8_STATUS_INVALID_PARAM ;

__attribute__((used)) static VP8StatusCode GetFeatures(const uint8_t* const data, size_t data_size,
                                 WebPBitstreamFeatures* const features) {
  if (features == ((void*)0) || data == ((void*)0)) {
    return VP8_STATUS_INVALID_PARAM;
  }
  DefaultFeatures(features);


  return ParseHeadersInternal(data, data_size,
                              &features->width, &features->height,
                              &features->has_alpha, &features->has_animation,
                              &features->format, ((void*)0));
}
