#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_5__ {scalar_t__ color; } ;
typedef  TYPE_2__ intf_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  C_CATEGORY ; 
 int /*<<< orphan*/  C_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    int l = 0;

#define H(a) MainBoxWrite(sys, l++, a)

    if (sys->color) FUNC2(C_CATEGORY, NULL);
    H(FUNC1("[Display]"));
    if (sys->color) FUNC2(C_DEFAULT, NULL);
    H(FUNC1(" h,H                    Show/Hide help box"));
    H(FUNC1(" i                      Show/Hide info box"));
    H(FUNC1(" M                      Show/Hide metadata box"));
    H(FUNC1(" L                      Show/Hide messages box"));
    H(FUNC1(" P                      Show/Hide playlist box"));
    H(FUNC1(" B                      Show/Hide filebrowser"));
    H(FUNC1(" S                      Show/Hide statistics box"));
    H(FUNC1(" Esc                    Close Add/Search entry"));
    H(FUNC1(" Ctrl-l                 Refresh the screen"));
    H("");

    if (sys->color) FUNC2(C_CATEGORY, NULL);
    H(FUNC1("[Global]"));
    if (sys->color) FUNC2(C_DEFAULT, NULL);
    H(FUNC1(" q, Q, Esc              Quit"));
    H(FUNC1(" s                      Stop"));
    H(FUNC1(" <space>                Pause/Play"));
    H(FUNC1(" f                      Toggle Fullscreen"));
    H(FUNC1(" c                      Cycle through audio tracks"));
    H(FUNC1(" v                      Cycle through subtitles tracks"));
    H(FUNC1(" b                      Cycle through video tracks"));
    H(FUNC1(" n, p                   Next/Previous playlist item"));
    H(FUNC1(" [, ]                   Next/Previous title"));
    H(FUNC1(" <, >                   Next/Previous chapter"));
    /* xgettext: You can use ← and → characters */
    H(FUNC1(" <left>,<right>         Seek -/+ 1%%"));
    H(FUNC1(" a, z                   Volume Up/Down"));
    H(FUNC1(" m                      Mute"));
    /* xgettext: You can use ↑ and ↓ characters */
    H(FUNC1(" <up>,<down>            Navigate through the box line by line"));
    /* xgettext: You can use ⇞ and ⇟ characters */
    H(FUNC1(" <pageup>,<pagedown>    Navigate through the box page by page"));
    /* xgettext: You can use ↖ and ↘ characters */
    H(FUNC1(" <start>,<end>          Navigate to start/end of box"));
    H("");

    if (sys->color) FUNC2(C_CATEGORY, NULL);
    H(FUNC1("[Playlist]"));
    if (sys->color) FUNC2(C_DEFAULT, NULL);
    H(FUNC1(" r                      Toggle Random playing"));
    H(FUNC1(" l                      Toggle Loop Playlist"));
    H(FUNC1(" R                      Toggle Repeat item"));
    H(FUNC1(" o                      Order Playlist by title"));
    H(FUNC1(" O                      Reverse order Playlist by title"));
    H(FUNC1(" g                      Go to the current playing item"));
    H(FUNC1(" /                      Look for an item"));
    H(FUNC1(" ;                      Look for the next item"));
    H(FUNC1(" A                      Add an entry"));
    /* xgettext: You can use ⌫ character to translate <backspace> */
    H(FUNC1(" D, <backspace>, <del>  Delete an entry"));
    H(FUNC1(" e                      Eject (if stopped)"));
    H("");

    if (sys->color) FUNC2(C_CATEGORY, NULL);
    H(FUNC1("[Filebrowser]"));
    if (sys->color) FUNC2(C_DEFAULT, NULL);
    H(FUNC1(" <enter>                Add the selected file to the playlist"));
    H(FUNC1(" <space>                Add the selected directory to the playlist"));
    H(FUNC1(" .                      Show/Hide hidden files"));
    H("");

    if (sys->color) FUNC2(C_CATEGORY, NULL);
    H(FUNC1("[Player]"));
    if (sys->color) FUNC2(C_DEFAULT, NULL);
    /* xgettext: You can use ↑ and ↓ characters */
    H(FUNC1(" <up>,<down>            Seek +/-5%%"));

#undef H
    return l;
}