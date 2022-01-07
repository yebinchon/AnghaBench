
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PGUI_CONSOLE_DATA ;


 int CDS_RESET ;
 int ChangeDisplaySettingsW (int *,int ) ;

VOID
LeaveFullScreen(PGUI_CONSOLE_DATA GuiData)
{
    ChangeDisplaySettingsW(((void*)0), CDS_RESET);
}
