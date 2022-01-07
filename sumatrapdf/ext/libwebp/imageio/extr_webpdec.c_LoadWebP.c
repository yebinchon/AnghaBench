
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int WebPBitstreamFeatures ;
typedef scalar_t__ VP8StatusCode ;


 int ImgIoUtilReadFile (char const* const,int const**,size_t*) ;
 int PrintWebPError (char const* const,scalar_t__) ;
 scalar_t__ VP8_STATUS_OK ;
 scalar_t__ WebPGetFeatures (int const*,size_t,int *) ;
 int free (void*) ;

int LoadWebP(const char* const in_file,
             const uint8_t** data, size_t* data_size,
             WebPBitstreamFeatures* bitstream) {
  VP8StatusCode status;
  WebPBitstreamFeatures local_features;
  if (!ImgIoUtilReadFile(in_file, data, data_size)) return 0;

  if (bitstream == ((void*)0)) {
    bitstream = &local_features;
  }

  status = WebPGetFeatures(*data, *data_size, bitstream);
  if (status != VP8_STATUS_OK) {
    free((void*)*data);
    *data = ((void*)0);
    *data_size = 0;
    PrintWebPError(in_file, status);
    return 0;
  }
  return 1;
}
