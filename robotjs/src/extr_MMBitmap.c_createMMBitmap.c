
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_4__ {void** imageBuffer; size_t width; size_t height; size_t bytewidth; void* bytesPerPixel; void* bitsPerPixel; } ;
typedef TYPE_1__* MMBitmapRef ;
typedef int MMBitmap ;


 TYPE_1__* malloc (int) ;

MMBitmapRef createMMBitmap(uint8_t *buffer,
                           size_t width,
                           size_t height,
                           size_t bytewidth,
                           uint8_t bitsPerPixel,
                           uint8_t bytesPerPixel)
{
 MMBitmapRef bitmap = malloc(sizeof(MMBitmap));
 if (bitmap == ((void*)0)) return ((void*)0);

 bitmap->imageBuffer = buffer;
 bitmap->width = width;
 bitmap->height = height;
 bitmap->bytewidth = bytewidth;
 bitmap->bitsPerPixel = bitsPerPixel;
 bitmap->bytesPerPixel = bytesPerPixel;

 return bitmap;
}
