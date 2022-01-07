
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct skyscraper {int height; int xoff; int width; int color; scalar_t__ windows; } ;
struct TYPE_5__ {int height; } ;
typedef TYPE_1__ lwCanvas ;


 int lwDrawPixel (TYPE_1__*,int,int,int) ;
 int lwGetPixel (TYPE_1__*,int,int) ;
 int rand () ;

void generateSkyscraper(lwCanvas *canvas, struct skyscraper *si) {
    int starty = canvas->height-1;
    int endy = starty - si->height + 1;
    for (int y = starty; y >= endy; y--) {
        for (int x = si->xoff; x < si->xoff+si->width; x++) {

            if (y == endy && (x <= si->xoff+1 || x >= si->xoff+si->width-2))
                continue;
            int color = si->color;



            if (si->windows &&
                x > si->xoff+1 &&
                x < si->xoff+si->width-2 &&
                y > endy+1 &&
                y < starty-1)
            {


                int relx = x - (si->xoff+1);
                int rely = y - (endy+1);




                if (relx/2 % 2 && rely % 2) {
                    do {
                        color = 1 + rand() % 2;
                    } while (color == si->color);


                    if (relx % 2) color = lwGetPixel(canvas,x-1,y);
                }
            }
            lwDrawPixel(canvas,x,y,color);
        }
    }
}
