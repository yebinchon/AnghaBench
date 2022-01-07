
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int widget ;
struct TYPE_3__ {struct TYPE_3__* child; scalar_t__ enabled; } ;
typedef TYPE_1__ container ;


 int WIDGET (TYPE_1__*) ;
 int widget_move (int ,int ,int ) ;
 int widget_padding_get_left (int ) ;
 int widget_padding_get_remaining_height (int ) ;
 int widget_padding_get_remaining_width (int ) ;
 int widget_padding_get_top (int ) ;
 int widget_resize (int ,int ,int ) ;

__attribute__((used)) static void container_update ( widget *wid )
{
    container *b = (container *) wid;
    if ( b->child && b->child->enabled ) {
        widget_resize ( WIDGET ( b->child ),
                        widget_padding_get_remaining_width ( WIDGET ( b ) ),
                        widget_padding_get_remaining_height ( WIDGET ( b ) )
                        );
        widget_move ( WIDGET ( b->child ),
                      widget_padding_get_left ( WIDGET ( b ) ),
                      widget_padding_get_top ( WIDGET ( b ) )
                      );
    }
}
