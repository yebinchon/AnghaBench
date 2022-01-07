
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_u ;
typedef int EventModifiers ;


 int MOUSE_ALT ;
 int MOUSE_CMD ;
 int MOUSE_CTRL ;
 int MOUSE_SHIFT ;
 int cmdKey ;
 int controlKey ;
 int optionKey ;
 int rightControlKey ;
 int rightOptionKey ;
 int rightShiftKey ;
 int shiftKey ;

int_u
EventModifiers2VimMouseModifiers(EventModifiers macModifiers)
{
    int_u vimModifiers = 0x00;

    if (macModifiers & (shiftKey | rightShiftKey))
 vimModifiers |= MOUSE_SHIFT;
    if (macModifiers & (controlKey | rightControlKey))
 vimModifiers |= MOUSE_CTRL;
    if (macModifiers & (optionKey | rightOptionKey))
 vimModifiers |= MOUSE_ALT;





    return (vimModifiers);
}
