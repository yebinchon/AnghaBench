
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int monitor_id; struct TYPE_7__* next; int h; int w; } ;
typedef TYPE_2__ workarea ;
struct TYPE_8__ {TYPE_2__* monitors; TYPE_1__* screen; } ;
struct TYPE_6__ {int height_in_pixels; int width_in_pixels; } ;


 int FALSE ;
 int TRUE ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_3__* xcb ;

__attribute__((used)) static int monitor_get_dimension ( int monitor_id, workarea *mon )
{
    memset ( mon, 0, sizeof ( workarea ) );
    mon->w = xcb->screen->width_in_pixels;
    mon->h = xcb->screen->height_in_pixels;

    workarea *iter = ((void*)0);
    for ( iter = xcb->monitors; iter; iter = iter->next ) {
        if ( iter->monitor_id == monitor_id ) {
            *mon = *iter;
            return TRUE;
        }
    }
    return FALSE;
}
