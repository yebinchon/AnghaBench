
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bhyvegc_image {int width; int height; int * data; } ;
struct bhyvegc {int raw; struct bhyvegc_image* gc_image; } ;


 int memset (int *,int ,int) ;
 int * realloc (int *,int) ;

void
bhyvegc_resize(struct bhyvegc *gc, uint16_t width, uint16_t height)
{
 struct bhyvegc_image *gc_image;

 gc_image = gc->gc_image;

 gc_image->width = width;
 gc_image->height = height;
 if (!gc->raw) {
  gc_image->data = realloc(gc_image->data, width * height * sizeof (uint32_t));
  if (gc_image->data != ((void*)0))
   memset(gc_image->data, 0, width * height *
       sizeof (uint32_t));
 }
}
