
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ parent; } ;
typedef TYPE_1__ widget ;
struct TYPE_7__ {int type; } ;
typedef TYPE_2__ box ;




 int hori_calculate_size (TYPE_2__*) ;
 int vert_calculate_size (TYPE_2__*) ;
 int widget_update (scalar_t__) ;

__attribute__((used)) static void box_update ( widget *wid )
{
    box *b = (box *) wid;
    switch ( b->type )
    {
    case 128:
        vert_calculate_size ( b );
        break;
    case 129:
    default:
        hori_calculate_size ( b );
    }
    if ( wid->parent ) {
        widget_update ( wid->parent );
    }
}
