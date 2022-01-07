
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int widget ;
typedef int TextBoxFontType ;


 int ACTIVE ;

 int FMOD_MASK ;

 int STATE_MASK ;
 int URGENT ;
 int ** listview_theme_prop_names ;
 int widget_set_state (int *,int ) ;

__attribute__((used)) static void listview_set_style ( widget *w, TextBoxFontType tbft )
{
    TextBoxFontType t = tbft & STATE_MASK;
    if ( w == ((void*)0) ) {
        return;
    }

    if ( t == ( URGENT | ACTIVE ) ) {
        t = ACTIVE;
    }
    switch ( ( tbft & FMOD_MASK ) )
    {
    case 128:
        widget_set_state ( w, listview_theme_prop_names[t][1] );
        break;
    case 129:
        widget_set_state ( w, listview_theme_prop_names[t][2] );
        break;
    default:
        widget_set_state ( w, listview_theme_prop_names[t][0] );
        break;
    }
}
