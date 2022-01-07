
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t size; int const* bytes; } ;
typedef TYPE_1__ WebPData ;


 int ImgIoUtilReadFile (char const* const,int const**,size_t*) ;

int ExUtilReadFileToWebPData(const char* const filename,
                             WebPData* const webp_data) {
  const uint8_t* data;
  size_t size;
  if (webp_data == ((void*)0)) return 0;
  if (!ImgIoUtilReadFile(filename, &data, &size)) return 0;
  webp_data->bytes = data;
  webp_data->size = size;
  return 1;
}
