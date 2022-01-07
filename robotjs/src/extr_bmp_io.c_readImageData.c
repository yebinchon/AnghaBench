
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {size_t blue; size_t green; size_t red; } ;
typedef TYPE_1__ MMRGBColor ;
typedef int FILE ;


 scalar_t__ MMRGB_IS_BGR ;
 int assert (int) ;
 size_t* calloc (int,size_t) ;
 scalar_t__ fread (size_t*,size_t const,int,int *) ;
 int free (size_t*) ;
 size_t* malloc (size_t) ;

__attribute__((used)) static uint8_t *readImageData(FILE *fp, size_t width, size_t height,
                              uint8_t bytesPerPixel, size_t bytewidth)
{
 size_t imageSize = bytewidth * height;
 uint8_t *imageBuf = calloc(1, imageSize);

 if (MMRGB_IS_BGR && (bytewidth % 4) == 0) {
  if (fread(imageBuf, imageSize, 1, fp) == 0) {
   free(imageBuf);
   return ((void*)0);
  }
 } else {
  uint8_t *row = malloc(bytewidth);
  size_t y;
  const size_t bmp_bytewidth = (width * bytesPerPixel + 3) & ~3;

  if (row == ((void*)0)) return ((void*)0);
  assert(bmp_bytewidth <= bytewidth);


  for (y = 0; y < height; ++y) {
   const size_t rowOffset = y * bytewidth;
   size_t x;
   uint8_t *rowptr = row;
   if (fread(row, bmp_bytewidth, 1, fp) == 0) {
    free(imageBuf);
    free(row);
    return ((void*)0);
   }

   for (x = 0; x < width; ++x) {
    const size_t colOffset = x * bytesPerPixel;
    MMRGBColor *color = (MMRGBColor *)(imageBuf +
                                       rowOffset + colOffset);


    color->blue = rowptr[0];
    color->green = rowptr[1];
    color->red = rowptr[2];
    rowptr += bytesPerPixel;
   }
  }

  free(row);
 }

 return imageBuf;
}
