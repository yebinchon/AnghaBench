
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* imageBuffer; } ;
typedef TYPE_1__* MMBitmapRef ;


 int assert (int ) ;
 int free (TYPE_1__*) ;

void destroyMMBitmap(MMBitmapRef bitmap)
{
 assert(bitmap != ((void*)0));

 if (bitmap->imageBuffer != ((void*)0)) {
  free(bitmap->imageBuffer);
  bitmap->imageBuffer = ((void*)0);
 }

 free(bitmap);
}
