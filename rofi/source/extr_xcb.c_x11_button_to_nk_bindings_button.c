
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint32 ;
typedef int gboolean ;
typedef int NkBindingsMouseButton ;


 int FALSE ;
 int NK_BINDINGS_MOUSE_BUTTON_BACK ;
 int NK_BINDINGS_MOUSE_BUTTON_EXTRA ;
 int NK_BINDINGS_MOUSE_BUTTON_FORWARD ;
 int NK_BINDINGS_MOUSE_BUTTON_MIDDLE ;
 int NK_BINDINGS_MOUSE_BUTTON_PRIMARY ;
 int NK_BINDINGS_MOUSE_BUTTON_SECONDARY ;
 int TRUE ;

__attribute__((used)) static gboolean x11_button_to_nk_bindings_button ( guint32 x11_button, NkBindingsMouseButton *button )
{
    switch ( x11_button )
    {
    case 1:
        *button = NK_BINDINGS_MOUSE_BUTTON_PRIMARY;
        break;
    case 3:
        *button = NK_BINDINGS_MOUSE_BUTTON_SECONDARY;
        break;
    case 2:
        *button = NK_BINDINGS_MOUSE_BUTTON_MIDDLE;
        break;
    case 8:
        *button = NK_BINDINGS_MOUSE_BUTTON_BACK;
        break;
    case 9:
        *button = NK_BINDINGS_MOUSE_BUTTON_FORWARD;
        break;
    case 4:
    case 5:
    case 6:
    case 7:
        return FALSE;
    default:
        *button = NK_BINDINGS_MOUSE_BUTTON_EXTRA + x11_button;
    }
    return TRUE;
}
