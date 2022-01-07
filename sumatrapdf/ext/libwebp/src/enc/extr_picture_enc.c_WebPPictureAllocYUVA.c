
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_5__ {int y_stride; int uv_stride; int a_stride; int * a; int * v; int * u; int * y; void* memory_; scalar_t__ colorspace; } ;
typedef TYPE_1__ WebPPicture ;
typedef scalar_t__ WebPEncCSP ;


 int VP8_ENC_ERROR_BAD_DIMENSION ;
 int VP8_ENC_ERROR_INVALID_CONFIGURATION ;
 int VP8_ENC_ERROR_OUT_OF_MEMORY ;
 int WEBP_CSP_ALPHA_BIT ;
 int WEBP_CSP_UV_MASK ;
 scalar_t__ const WEBP_YUV420 ;
 int WebPEncodingSetError (TYPE_1__* const,int ) ;
 int WebPPictureResetBufferYUVA (TYPE_1__* const) ;
 int WebPSafeFree (void*) ;
 scalar_t__ WebPSafeMalloc (int,int) ;
 int assert (int ) ;

int WebPPictureAllocYUVA(WebPPicture* const picture, int width, int height) {
  const WebPEncCSP uv_csp =
      (WebPEncCSP)((int)picture->colorspace & WEBP_CSP_UV_MASK);
  const int has_alpha = (int)picture->colorspace & WEBP_CSP_ALPHA_BIT;
  const int y_stride = width;
  const int uv_width = (int)(((int64_t)width + 1) >> 1);
  const int uv_height = (int)(((int64_t)height + 1) >> 1);
  const int uv_stride = uv_width;
  int a_width, a_stride;
  uint64_t y_size, uv_size, a_size, total_size;
  uint8_t* mem;

  assert(picture != ((void*)0));

  WebPSafeFree(picture->memory_);
  WebPPictureResetBufferYUVA(picture);

  if (uv_csp != WEBP_YUV420) {
    return WebPEncodingSetError(picture, VP8_ENC_ERROR_INVALID_CONFIGURATION);
  }


  a_width = has_alpha ? width : 0;
  a_stride = a_width;
  y_size = (uint64_t)y_stride * height;
  uv_size = (uint64_t)uv_stride * uv_height;
  a_size = (uint64_t)a_stride * height;

  total_size = y_size + a_size + 2 * uv_size;


  if (width <= 0 || height <= 0 ||
      uv_width <= 0 || uv_height <= 0) {
    return WebPEncodingSetError(picture, VP8_ENC_ERROR_BAD_DIMENSION);
  }

  mem = (uint8_t*)WebPSafeMalloc(total_size, sizeof(*mem));
  if (mem == ((void*)0)) {
    return WebPEncodingSetError(picture, VP8_ENC_ERROR_OUT_OF_MEMORY);
  }


  picture->memory_ = (void*)mem;
  picture->y_stride = y_stride;
  picture->uv_stride = uv_stride;
  picture->a_stride = a_stride;


  picture->y = mem;
  mem += y_size;

  picture->u = mem;
  mem += uv_size;
  picture->v = mem;
  mem += uv_size;

  if (a_size > 0) {
    picture->a = mem;
    mem += a_size;
  }
  (void)mem;
  return 1;
}
