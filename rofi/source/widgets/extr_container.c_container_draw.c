
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int widget ;
struct TYPE_2__ {int child; } ;
typedef TYPE_1__ container ;
typedef int cairo_t ;


 int widget_draw (int ,int *) ;

__attribute__((used)) static void container_draw ( widget *wid, cairo_t *draw )
{
    container *b = (container *) wid;

    widget_draw ( b->child, draw );
}
