
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t height; size_t bytewidth; int bytesPerPixel; int bitsPerPixel; int width; int * imageBuffer; } ;
typedef TYPE_1__* MMBitmapRef ;


 int assert (int ) ;
 TYPE_1__* createMMBitmap (int *,int ,size_t,size_t,int ,int ) ;
 int * malloc (size_t const) ;
 int memcpy (int *,int *,size_t const) ;

MMBitmapRef copyMMBitmap(MMBitmapRef bitmap)
{
 uint8_t *copiedBuf = ((void*)0);

 assert(bitmap != ((void*)0));
 if (bitmap->imageBuffer != ((void*)0)) {
  const size_t bufsize = bitmap->height * bitmap->bytewidth;
  copiedBuf = malloc(bufsize);
  if (copiedBuf == ((void*)0)) return ((void*)0);

  memcpy(copiedBuf, bitmap->imageBuffer, bufsize);
 }

 return createMMBitmap(copiedBuf,
                       bitmap->width,
                       bitmap->height,
                       bitmap->bytewidth,
                       bitmap->bitsPerPixel,
                       bitmap->bytesPerPixel);
}
