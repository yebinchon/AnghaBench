
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ENABLE_MOUSE_INPUT ;
 int GetConsoleMode (int ,int *) ;
 int SetConsoleMode (int ,int ) ;
 int g_fMouseActive ;
 int g_fMouseAvail ;
 int g_hConIn ;

void
mch_setmouse(int on)
{
    DWORD cmodein;

    if (!g_fMouseAvail)
 return;

    g_fMouseActive = on;
    GetConsoleMode(g_hConIn, &cmodein);

    if (g_fMouseActive)
 cmodein |= ENABLE_MOUSE_INPUT;
    else
 cmodein &= ~ENABLE_MOUSE_INPUT;

    SetConsoleMode(g_hConIn, cmodein);
}
