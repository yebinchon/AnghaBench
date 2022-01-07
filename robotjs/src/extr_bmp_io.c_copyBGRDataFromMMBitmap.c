
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int bytewidth; int height; int width; int bytesPerPixel; int imageBuffer; } ;
struct TYPE_6__ {int red; int green; int blue; } ;
typedef TYPE_1__ MMRGBColor ;
typedef TYPE_2__* MMBitmapRef ;


 TYPE_1__* MMRGBColorRefAtPoint (TYPE_2__*,size_t,size_t) ;
 scalar_t__ MMRGB_IS_BGR ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void copyBGRDataFromMMBitmap(MMBitmapRef bitmap, uint8_t *dest)
{
 if (MMRGB_IS_BGR && (bitmap->bytewidth % 4) == 0) {
  memcpy(dest, bitmap->imageBuffer, bitmap->bytewidth * bitmap->height);
 } else {
  const size_t bytewidth = (bitmap->width * bitmap->bytesPerPixel + 3) & ~3;
  size_t y;


  for (y = 0; y < bitmap->height; ++y) {
   uint8_t *rowptr = dest + (y * bytewidth);
   size_t x;
   for (x = 0; x < bitmap->width; ++x) {
    MMRGBColor *color = MMRGBColorRefAtPoint(bitmap, x, y);


    rowptr[0] = color->blue;
    rowptr[1] = color->green;
    rowptr[2] = color->red;

    rowptr += bitmap->bytesPerPixel;
   }
  }
 }
}
