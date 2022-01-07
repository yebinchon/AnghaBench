
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int use_argb; int width; int height; TYPE_2__* custom_ptr; int writer; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_14__ {size_t size; int * mem; } ;
typedef TYPE_2__ WebPMemoryWriter ;
struct TYPE_15__ {int lossless; } ;
typedef TYPE_3__ WebPConfig ;
typedef scalar_t__ (* Importer ) (TYPE_1__*,int const*,int) ;


 int WEBP_PRESET_DEFAULT ;
 int WebPConfigPreset (TYPE_3__*,int ,float) ;
 scalar_t__ WebPEncode (TYPE_3__*,TYPE_1__*) ;
 int WebPMemoryWrite ;
 int WebPMemoryWriterClear (TYPE_2__*) ;
 int WebPMemoryWriterInit (TYPE_2__*) ;
 int WebPPictureFree (TYPE_1__*) ;
 int WebPPictureInit (TYPE_1__*) ;

__attribute__((used)) static size_t Encode(const uint8_t* rgba, int width, int height, int stride,
                     Importer import, float quality_factor, int lossless,
                     uint8_t** output) {
  WebPPicture pic;
  WebPConfig config;
  WebPMemoryWriter wrt;
  int ok;

  if (output == ((void*)0)) return 0;

  if (!WebPConfigPreset(&config, WEBP_PRESET_DEFAULT, quality_factor) ||
      !WebPPictureInit(&pic)) {
    return 0;
  }

  config.lossless = !!lossless;
  pic.use_argb = !!lossless;
  pic.width = width;
  pic.height = height;
  pic.writer = WebPMemoryWrite;
  pic.custom_ptr = &wrt;
  WebPMemoryWriterInit(&wrt);

  ok = import(&pic, rgba, stride) && WebPEncode(&config, &pic);
  WebPPictureFree(&pic);
  if (!ok) {
    WebPMemoryWriterClear(&wrt);
    *output = ((void*)0);
    return 0;
  }
  *output = wrt.mem;
  return wrt.size;
}
