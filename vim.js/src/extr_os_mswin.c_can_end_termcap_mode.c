
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Columns ;
 int FALSE ;
 int TRUE ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 int _ (char*) ;
 scalar_t__ g_PlatformId ;
 int msg (int ) ;

int
can_end_termcap_mode(
    int give_msg)
{



    if (g_PlatformId == VER_PLATFORM_WIN32_NT || Columns == 80)
 return TRUE;
    if (give_msg)
 msg(_("'columns' is not 80, cannot execute external commands"));
    return FALSE;

}
