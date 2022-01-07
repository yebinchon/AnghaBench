
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int h; int w; int y; int x; struct TYPE_7__* next; } ;
typedef TYPE_2__ workarea ;
struct TYPE_8__ {TYPE_2__* monitors; TYPE_1__* screen; } ;
struct TYPE_6__ {int height_in_pixels; int width_in_pixels; } ;


 scalar_t__ INTERSECT (int,int,int ,int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_3__* xcb ;

__attribute__((used)) static void monitor_dimensions ( int x, int y, workarea *mon )
{
    memset ( mon, 0, sizeof ( workarea ) );
    mon->w = xcb->screen->width_in_pixels;
    mon->h = xcb->screen->height_in_pixels;

    for ( workarea *iter = xcb->monitors; iter; iter = iter->next ) {
        if ( INTERSECT ( x, y, iter->x, iter->y, iter->w, iter->h ) ) {
            *mon = *iter;
            break;
        }
    }
}
