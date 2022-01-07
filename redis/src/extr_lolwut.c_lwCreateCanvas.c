
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; void* pixels; } ;
typedef TYPE_1__ lwCanvas ;


 int memset (void*,int,int) ;
 void* zmalloc (int) ;

lwCanvas *lwCreateCanvas(int width, int height, int bgcolor) {
    lwCanvas *canvas = zmalloc(sizeof(*canvas));
    canvas->width = width;
    canvas->height = height;
    canvas->pixels = zmalloc(width*height);
    memset(canvas->pixels,bgcolor,width*height);
    return canvas;
}
