
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint32 ;
typedef int gint32 ;
typedef int gboolean ;
typedef int NkBindingsScrollAxis ;


 int FALSE ;
 int NK_BINDINGS_SCROLL_AXIS_HORIZONTAL ;
 int NK_BINDINGS_SCROLL_AXIS_VERTICAL ;
 int TRUE ;

__attribute__((used)) static gboolean x11_button_to_nk_bindings_scroll ( guint32 x11_button, NkBindingsScrollAxis *axis, gint32 *steps )
{
    *steps = 1;
    switch ( x11_button )
    {
    case 4:
        *steps = -1;

    case 5:
        *axis = NK_BINDINGS_SCROLL_AXIS_VERTICAL;
        break;
    case 6:
        *steps = -1;

    case 7:
        *axis = NK_BINDINGS_SCROLL_AXIS_HORIZONTAL;
        break;
    default:
        return FALSE;
    }
    return TRUE;
}
