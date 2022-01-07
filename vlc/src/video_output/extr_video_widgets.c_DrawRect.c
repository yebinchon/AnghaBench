
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_2__* p_picture; } ;
typedef TYPE_3__ subpicture_region_t ;
struct TYPE_6__ {TYPE_1__* p; } ;
struct TYPE_5__ {int i_pitch; int i_visible_pitch; int * p_pixels; } ;


 int STYLE_FILLED ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void DrawRect(subpicture_region_t *r, int fill, uint8_t color,
                     int x1, int y1, int x2, int y2)
{
    uint8_t *p = r->p_picture->p->p_pixels;
    int pitch = r->p_picture->p->i_pitch;
    if( x1 > x2 || y1 > y2 )
        return;

    if (fill == STYLE_FILLED) {
        if(x1 == 0 && x2 + 1 == r->p_picture->p->i_visible_pitch) {
            memset(&p[pitch * y1], color, pitch * (y2 - y1 + 1));
        } else {
            for (int y = y1; y <= y2; y++)
                memset(&p[x1 + pitch * y], color, x2 - x1 + 1);
        }
    } else {
        DrawRect(r, STYLE_FILLED, color, x1, y1, x1, y2);
        DrawRect(r, STYLE_FILLED, color, x2, y1, x2, y2);
        DrawRect(r, STYLE_FILLED, color, x1, y1, x2, y1);
        DrawRect(r, STYLE_FILLED, color, x1, y2, x2, y2);
    }
}
