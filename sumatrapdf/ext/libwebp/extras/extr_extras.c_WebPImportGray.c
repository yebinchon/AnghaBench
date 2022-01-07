
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int width; int height; int y_stride; int uv_stride; scalar_t__ v; scalar_t__ u; scalar_t__ y; int colorspace; } ;
typedef TYPE_1__ WebPPicture ;


 int WEBP_YUV420 ;
 int WebPPictureAlloc (TYPE_1__*) ;
 int memcpy (scalar_t__,int const*,int) ;
 int memset (scalar_t__,int,int) ;

int WebPImportGray(const uint8_t* gray_data, WebPPicture* pic) {
  int y, width, uv_width;
  if (pic == ((void*)0) || gray_data == ((void*)0)) return 0;
  pic->colorspace = WEBP_YUV420;
  if (!WebPPictureAlloc(pic)) return 0;
  width = pic->width;
  uv_width = (width + 1) >> 1;
  for (y = 0; y < pic->height; ++y) {
    memcpy(pic->y + y * pic->y_stride, gray_data, width);
    gray_data += width;
    if ((y & 1) == 0) {
      memset(pic->u + (y >> 1) * pic->uv_stride, 128, uv_width);
      memset(pic->v + (y >> 1) * pic->uv_stride, 128, uv_width);
    }
  }
  return 1;
}
