
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_6__ {int red; int green; int blue; } ;
typedef TYPE_1__ MMRGBColor ;
typedef TYPE_2__* MMBitmapRef ;


 TYPE_1__* MMRGBColorRefAtPoint (TYPE_2__*,size_t,size_t) ;
 size_t STR_BYTES_PER_PIXEL ;
 int * calloc (size_t,int) ;

__attribute__((used)) static uint8_t *createRawBitmapData(MMBitmapRef bitmap)
{
 uint8_t *raw = calloc(STR_BYTES_PER_PIXEL, bitmap->width * bitmap->height);
 size_t y;

 for (y = 0; y < bitmap->height; ++y) {

  const size_t rowOffset = y * bitmap->width * STR_BYTES_PER_PIXEL;
  size_t x;
  for (x = 0; x < bitmap->width; ++x) {

   const size_t colOffset = x * STR_BYTES_PER_PIXEL;
   uint8_t *dest = raw + rowOffset + colOffset;
   MMRGBColor *srcColor = MMRGBColorRefAtPoint(bitmap, x, y);
   dest[0] = srcColor->blue;
   dest[1] = srcColor->green;
   dest[2] = srcColor->red;
  }
 }

 return raw;
}
