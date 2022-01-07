
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dmSize; int dmPelsWidth; int dmPelsHeight; int dmFields; int dmDisplayFixedOutput; } ;
typedef int PGUI_CONSOLE_DATA ;
typedef int DevMode ;
typedef TYPE_1__ DEVMODEW ;
typedef int BOOL ;


 int CDS_FULLSCREEN ;
 scalar_t__ ChangeDisplaySettingsW (TYPE_1__*,int ) ;
 scalar_t__ DISP_CHANGE_SUCCESSFUL ;
 int DMDFO_CENTER ;
 int DM_DISPLAYFIXEDOUTPUT ;
 int DM_PELSHEIGHT ;
 int DM_PELSWIDTH ;
 int ZeroMemory (TYPE_1__*,int) ;

BOOL
EnterFullScreen(PGUI_CONSOLE_DATA GuiData)
{
    DEVMODEW DevMode;

    ZeroMemory(&DevMode, sizeof(DevMode));
    DevMode.dmSize = sizeof(DevMode);

    DevMode.dmDisplayFixedOutput = DMDFO_CENTER;

    DevMode.dmPelsWidth = 640;
    DevMode.dmPelsHeight = 480;

    DevMode.dmFields = DM_DISPLAYFIXEDOUTPUT | DM_PELSWIDTH | DM_PELSHEIGHT;

    return (ChangeDisplaySettingsW(&DevMode, CDS_FULLSCREEN) == DISP_CHANGE_SUCCESSFUL);
}
