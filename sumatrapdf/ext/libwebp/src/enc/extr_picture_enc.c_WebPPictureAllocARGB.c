
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int argb_stride; int * argb; void* memory_argb_; } ;
typedef TYPE_1__ WebPPicture ;


 int VP8_ENC_ERROR_BAD_DIMENSION ;
 int VP8_ENC_ERROR_OUT_OF_MEMORY ;
 scalar_t__ WEBP_ALIGN (void*) ;
 int const WEBP_ALIGN_CST ;
 int WebPEncodingSetError (TYPE_1__* const,int ) ;
 int WebPPictureResetBufferARGB (TYPE_1__* const) ;
 int WebPSafeFree (void*) ;
 void* WebPSafeMalloc (int const,int) ;
 int assert (int ) ;

int WebPPictureAllocARGB(WebPPicture* const picture, int width, int height) {
  void* memory;
  const uint64_t argb_size = (uint64_t)width * height;

  assert(picture != ((void*)0));

  WebPSafeFree(picture->memory_argb_);
  WebPPictureResetBufferARGB(picture);

  if (width <= 0 || height <= 0) {
    return WebPEncodingSetError(picture, VP8_ENC_ERROR_BAD_DIMENSION);
  }

  memory = WebPSafeMalloc(argb_size + WEBP_ALIGN_CST, sizeof(*picture->argb));
  if (memory == ((void*)0)) {
    return WebPEncodingSetError(picture, VP8_ENC_ERROR_OUT_OF_MEMORY);
  }
  picture->memory_argb_ = memory;
  picture->argb = (uint32_t*)WEBP_ALIGN(memory);
  picture->argb_stride = width;
  return 1;
}
