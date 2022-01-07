
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sds ;
struct TYPE_4__ {int height; int width; } ;
typedef TYPE_1__ lwCanvas ;


 scalar_t__ lwGetPixel (TYPE_1__*,int,int) ;
 int lwTranslatePixelsGroup (int,char*) ;
 int sdscatlen (int ,char*,int) ;
 int sdsempty () ;

__attribute__((used)) static sds renderCanvas(lwCanvas *canvas) {
    sds text = sdsempty();
    for (int y = 0; y < canvas->height; y += 4) {
        for (int x = 0; x < canvas->width; x += 2) {


            int byte = 0;
            if (lwGetPixel(canvas,x,y)) byte |= (1<<0);
            if (lwGetPixel(canvas,x,y+1)) byte |= (1<<1);
            if (lwGetPixel(canvas,x,y+2)) byte |= (1<<2);
            if (lwGetPixel(canvas,x+1,y)) byte |= (1<<3);
            if (lwGetPixel(canvas,x+1,y+1)) byte |= (1<<4);
            if (lwGetPixel(canvas,x+1,y+2)) byte |= (1<<5);
            if (lwGetPixel(canvas,x,y+3)) byte |= (1<<6);
            if (lwGetPixel(canvas,x+1,y+3)) byte |= (1<<7);
            char unicode[3];
            lwTranslatePixelsGroup(byte,unicode);
            text = sdscatlen(text,unicode,3);
        }
        if (y != canvas->height-1) text = sdscatlen(text,"\n",1);
    }
    return text;
}
