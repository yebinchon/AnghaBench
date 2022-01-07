
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct skyscraper {int color; int xoff; int width; int height; int windows; } ;
struct TYPE_4__ {int width; int height; } ;
typedef TYPE_1__ lwCanvas ;


 int generateSkyscraper (TYPE_1__*,struct skyscraper*) ;
 int rand () ;

void generateSkyline(lwCanvas *canvas) {
    struct skyscraper si;




    for (int color = 2; color >= 1; color--) {
        si.color = color;
        for (int offset = -10; offset < canvas->width;) {
            offset += rand() % 8;
            si.xoff = offset;
            si.width = 10 + rand()%9;
            if (color == 2)
                si.height = canvas->height/2 + rand()%canvas->height/2;
            else
                si.height = canvas->height/2 + rand()%canvas->height/3;
            si.windows = 0;
            generateSkyscraper(canvas, &si);
            if (color == 2)
                offset += si.width/2;
            else
                offset += si.width+1;
        }
    }


    si.color = 0;
    for (int offset = -10; offset < canvas->width;) {
        offset += rand() % 8;
        si.xoff = offset;
        si.width = 5 + rand()%14;
        if (si.width % 4) si.width += (si.width % 3);
        si.height = canvas->height/3 + rand()%canvas->height/2;
        si.windows = 1;
        generateSkyscraper(canvas, &si);
        offset += si.width+5;
    }
}
