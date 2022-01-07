
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * state; } ;
struct TYPE_6__ {int tbft; TYPE_1__ widget; } ;
typedef TYPE_2__ textbox ;
typedef int TextBoxFontType ;


 int ACTIVE ;

 int FMOD_MASK ;

 int STATE_MASK ;
 int URGENT ;
 int WIDGET (TYPE_2__*) ;
 int ** theme_prop_names ;
 int widget_queue_redraw (int ) ;
 int widget_set_state (int ,int ) ;

void textbox_font ( textbox *tb, TextBoxFontType tbft )
{
    TextBoxFontType t = tbft & STATE_MASK;
    if ( tb == ((void*)0) ) {
        return;
    }

    if ( t == ( URGENT | ACTIVE ) ) {
        t = ACTIVE;
    }
    switch ( ( tbft & FMOD_MASK ) )
    {
    case 128:
        widget_set_state ( WIDGET ( tb ), theme_prop_names[t][1] );
        break;
    case 129:
        widget_set_state ( WIDGET ( tb ), theme_prop_names[t][2] );
        break;
    default:
        widget_set_state ( WIDGET ( tb ), theme_prop_names[t][0] );
        break;
    }
    if ( tb->tbft != tbft || tb->widget.state == ((void*)0) ) {
        widget_queue_redraw ( WIDGET ( tb ) );
    }
    tb->tbft = tbft;
}
