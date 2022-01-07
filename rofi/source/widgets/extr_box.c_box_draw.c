
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int widget ;
typedef int cairo_t ;
struct TYPE_6__ {int children; } ;
typedef TYPE_1__ box ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_2__ GList ;


 TYPE_2__* g_list_first (int ) ;
 TYPE_2__* g_list_next (TYPE_2__*) ;
 int widget_draw (int *,int *) ;

__attribute__((used)) static void box_draw ( widget *wid, cairo_t *draw )
{
    box *b = (box *) wid;
    for ( GList *iter = g_list_first ( b->children ); iter != ((void*)0); iter = g_list_next ( iter ) ) {
        widget * child = (widget *) iter->data;
        widget_draw ( child, draw );
    }
}
