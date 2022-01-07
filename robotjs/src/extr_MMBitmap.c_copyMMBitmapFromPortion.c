
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {size_t bytewidth; size_t bytesPerPixel; size_t const height; int bitsPerPixel; int * imageBuffer; } ;
struct TYPE_12__ {size_t height; int width; } ;
struct TYPE_11__ {size_t y; size_t x; } ;
struct TYPE_13__ {TYPE_2__ size; TYPE_1__ origin; } ;
typedef TYPE_3__ MMRect ;
typedef TYPE_4__* MMBitmapRef ;


 int MMBitmapRectInBounds (TYPE_4__*,TYPE_3__) ;
 int assert (int) ;
 TYPE_4__* createMMBitmap (int *,int ,size_t,size_t const,int ,size_t) ;
 int * malloc (size_t const) ;
 int memcpy (int *,int *,size_t const) ;

MMBitmapRef copyMMBitmapFromPortion(MMBitmapRef source, MMRect rect)
{
 assert(source != ((void*)0));

 if (source->imageBuffer == ((void*)0) || !MMBitmapRectInBounds(source, rect)) {
  return ((void*)0);
 } else {
  uint8_t *copiedBuf = ((void*)0);
  const size_t bufsize = rect.size.height * source->bytewidth;
  const size_t offset = (source->bytewidth * rect.origin.y) +
                        (rect.origin.x * source->bytesPerPixel);


  assert((bufsize + offset) <= (source->bytewidth * source->height));

  copiedBuf = malloc(bufsize);
  if (copiedBuf == ((void*)0)) return ((void*)0);

  memcpy(copiedBuf, source->imageBuffer + offset, bufsize);

  return createMMBitmap(copiedBuf,
                        rect.size.width,
                        rect.size.height,
                        source->bytewidth,
                        source->bitsPerPixel,
                        source->bytesPerPixel);
 }
}
