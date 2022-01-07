
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
__attribute__((used)) static char* get_msg_name(UINT msg)
{
    switch(msg)
    {
        case 164: return "WM_CREATE";
        case 149: return "WM_NCCREATE";
        case 141: return "WM_PARENTNOTIFY";
        case 162: return "WM_DESTROY";
        case 148: return "WM_NCDESTROY";
        case 166: return "WM_CHILDACTIVATE";
        case 151: return "WM_NCACTIVATE";
        case 168: return "WM_ACTIVATE";
        case 167: return "WM_ACTIVATEAPP";
        case 128: return "WM_WINDOWPOSCHANGING";
        case 129: return "WM_WINDOWPOSCHANGED";
        case 137: return "WM_SETFOCUS";
        case 156: return "WM_KILLFOCUS";
        case 144: return "WM_NCPAINT";
        case 142: return "WM_PAINT";
        case 161: return "WM_ERASEBKGND";
        case 133: return "WM_SIZE";
        case 152: return "WM_MOVE";
        case 134: return "WM_SHOWWINDOW";
        case 139: return "WM_QUERYNEWPALETTE";
        case 154: return "WM_MOUSELEAVE";
        case 155: return "WM_MOUSEHOVER";
        case 145: return "WM_NCMOUSELEAVE";
        case 146: return "WM_NCMOUSEHOVER";
        case 147: return "WM_NCHITTEST";
        case 138: return "WM_SETCURSOR";
        case 153: return "WM_MOUSEMOVE";
        case 130: return "WM_SYSTIMER";
        case 159: return "WM_GETMINMAXINFO";
        case 150: return "WM_NCCALCSIZE";
        case 135: return "WM_SETTINGCHANGE";
        case 160: return "WM_GETICON";
        case 136: return "WM_SETICON";
        case 158: return "WM_KEYDOWN";
        case 157: return "WM_KEYUP";
        case 143: return "WM_NOTIFY";
        case 165: return "WM_COMMAND";
        case 140: return "WM_PRINTCLIENT";
        case 163: return "WM_CTLCOLORSTATIC";
        case 131: return "WM_STYLECHANGING";
        case 132: return "WM_STYLECHANGED";
        default: return ((void*)0);
    }
}
