
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HINSTANCE ;
typedef int BOOLEAN ;


 int GUI_CONWND_CLASS ;
 int UnregisterClassW (int ,int ) ;

BOOLEAN
UnRegisterConWndClass(HINSTANCE hInstance)
{
    return !!UnregisterClassW(GUI_CONWND_CLASS, hInstance);
}
