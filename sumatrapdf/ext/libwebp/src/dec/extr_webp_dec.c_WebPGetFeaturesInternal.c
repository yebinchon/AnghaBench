
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int WebPBitstreamFeatures ;
typedef int VP8StatusCode ;


 int GetFeatures (int const*,size_t,int *) ;
 int VP8_STATUS_INVALID_PARAM ;
 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_DECODER_ABI_VERSION ;

VP8StatusCode WebPGetFeaturesInternal(const uint8_t* data, size_t data_size,
                                      WebPBitstreamFeatures* features,
                                      int version) {
  if (WEBP_ABI_IS_INCOMPATIBLE(version, WEBP_DECODER_ABI_VERSION)) {
    return VP8_STATUS_INVALID_PARAM;
  }
  if (features == ((void*)0)) {
    return VP8_STATUS_INVALID_PARAM;
  }
  return GetFeatures(data, data_size, features);
}
