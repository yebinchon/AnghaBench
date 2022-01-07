
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_5__ {scalar_t__ color; } ;
typedef TYPE_2__ intf_sys_t ;


 int C_CATEGORY ;
 int C_DEFAULT ;
 int H (char*) ;
 char* _ (char*) ;
 int color_set (int ,int *) ;

__attribute__((used)) static int DrawHelp(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    int l = 0;



    if (sys->color) color_set(C_CATEGORY, ((void*)0));
    MainBoxWrite(sys, l++, _("[Display]"));
    if (sys->color) color_set(C_DEFAULT, ((void*)0));
    MainBoxWrite(sys, l++, _(" h,H                    Show/Hide help box"));
    MainBoxWrite(sys, l++, _(" i                      Show/Hide info box"));
    MainBoxWrite(sys, l++, _(" M                      Show/Hide metadata box"));
    MainBoxWrite(sys, l++, _(" L                      Show/Hide messages box"));
    MainBoxWrite(sys, l++, _(" P                      Show/Hide playlist box"));
    MainBoxWrite(sys, l++, _(" B                      Show/Hide filebrowser"));
    MainBoxWrite(sys, l++, _(" S                      Show/Hide statistics box"));
    MainBoxWrite(sys, l++, _(" Esc                    Close Add/Search entry"));
    MainBoxWrite(sys, l++, _(" Ctrl-l                 Refresh the screen"));
    MainBoxWrite(sys, l++, "");

    if (sys->color) color_set(C_CATEGORY, ((void*)0));
    MainBoxWrite(sys, l++, _("[Global]"));
    if (sys->color) color_set(C_DEFAULT, ((void*)0));
    MainBoxWrite(sys, l++, _(" q, Q, Esc              Quit"));
    MainBoxWrite(sys, l++, _(" s                      Stop"));
    MainBoxWrite(sys, l++, _(" <space>                Pause/Play"));
    MainBoxWrite(sys, l++, _(" f                      Toggle Fullscreen"));
    MainBoxWrite(sys, l++, _(" c                      Cycle through audio tracks"));
    MainBoxWrite(sys, l++, _(" v                      Cycle through subtitles tracks"));
    MainBoxWrite(sys, l++, _(" b                      Cycle through video tracks"));
    MainBoxWrite(sys, l++, _(" n, p                   Next/Previous playlist item"));
    MainBoxWrite(sys, l++, _(" [, ]                   Next/Previous title"));
    MainBoxWrite(sys, l++, _(" <, >                   Next/Previous chapter"));

    MainBoxWrite(sys, l++, _(" <left>,<right>         Seek -/+ 1%%"));
    MainBoxWrite(sys, l++, _(" a, z                   Volume Up/Down"));
    MainBoxWrite(sys, l++, _(" m                      Mute"));

    MainBoxWrite(sys, l++, _(" <up>,<down>            Navigate through the box line by line"));

    MainBoxWrite(sys, l++, _(" <pageup>,<pagedown>    Navigate through the box page by page"));

    MainBoxWrite(sys, l++, _(" <start>,<end>          Navigate to start/end of box"));
    MainBoxWrite(sys, l++, "");

    if (sys->color) color_set(C_CATEGORY, ((void*)0));
    MainBoxWrite(sys, l++, _("[Playlist]"));
    if (sys->color) color_set(C_DEFAULT, ((void*)0));
    MainBoxWrite(sys, l++, _(" r                      Toggle Random playing"));
    MainBoxWrite(sys, l++, _(" l                      Toggle Loop Playlist"));
    MainBoxWrite(sys, l++, _(" R                      Toggle Repeat item"));
    MainBoxWrite(sys, l++, _(" o                      Order Playlist by title"));
    MainBoxWrite(sys, l++, _(" O                      Reverse order Playlist by title"));
    MainBoxWrite(sys, l++, _(" g                      Go to the current playing item"));
    MainBoxWrite(sys, l++, _(" /                      Look for an item"));
    MainBoxWrite(sys, l++, _(" ;                      Look for the next item"));
    MainBoxWrite(sys, l++, _(" A                      Add an entry"));

    MainBoxWrite(sys, l++, _(" D, <backspace>, <del>  Delete an entry"));
    MainBoxWrite(sys, l++, _(" e                      Eject (if stopped)"));
    MainBoxWrite(sys, l++, "");

    if (sys->color) color_set(C_CATEGORY, ((void*)0));
    MainBoxWrite(sys, l++, _("[Filebrowser]"));
    if (sys->color) color_set(C_DEFAULT, ((void*)0));
    MainBoxWrite(sys, l++, _(" <enter>                Add the selected file to the playlist"));
    MainBoxWrite(sys, l++, _(" <space>                Add the selected directory to the playlist"));
    MainBoxWrite(sys, l++, _(" .                      Show/Hide hidden files"));
    MainBoxWrite(sys, l++, "");

    if (sys->color) color_set(C_CATEGORY, ((void*)0));
    MainBoxWrite(sys, l++, _("[Player]"));
    if (sys->color) color_set(C_DEFAULT, ((void*)0));

    MainBoxWrite(sys, l++, _(" <up>,<down>            Seek +/-5%%"));


    return l;
}
