
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sds ;
struct TYPE_4__ {int height; int width; } ;
typedef TYPE_1__ lwCanvas ;


 int lwGetPixel (TYPE_1__*,int,int) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatprintf (int ,char*,char*) ;
 int sdsempty () ;

__attribute__((used)) static sds renderCanvas(lwCanvas *canvas) {
    sds text = sdsempty();
    for (int y = 0; y < canvas->height; y++) {
        for (int x = 0; x < canvas->width; x++) {
            int color = lwGetPixel(canvas,x,y);
            char *ce;




            switch(color) {
            case 0: ce = "0;30;40m"; break;
            case 1: ce = "0;90;100m"; break;
            case 2: ce = "0;37;47m"; break;
            case 3: ce = "0;97;107m"; break;
            default: ce = "0;30;40m"; break;
            }
            text = sdscatprintf(text,"\033[%s \033[0m",ce);
        }
        if (y != canvas->height-1) text = sdscatlen(text,"\n",1);
    }
    return text;
}
