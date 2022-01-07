
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;







__attribute__((used)) static char* get_hook_name(UINT id)
{
    switch (id)
    {
        case 131: return "WH_KEYBOARD";
        case 130: return "WH_KEYBOARD_LL";
        case 129: return "WH_MOUSE";
        case 128: return "WH_MOUSE_LL";
        default: return ((void*)0);
    }
}
