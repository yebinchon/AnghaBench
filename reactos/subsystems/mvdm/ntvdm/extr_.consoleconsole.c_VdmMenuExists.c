
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT ;
typedef int HMENU ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetMenuItemCount (int ) ;
 scalar_t__ GetMenuItemID (int ,scalar_t__) ;
 scalar_t__ ID_CAPTURE_MOUSE ;
 int TRUE ;
 scalar_t__ VdmMenuPos ;

__attribute__((used)) static BOOL
VdmMenuExists(HMENU hConsoleMenu)
{
    INT MenuPos, i;
    MenuPos = GetMenuItemCount(hConsoleMenu);


    for (i = 0; i <= MenuPos; i++)
    {
        if (GetMenuItemID(hConsoleMenu, i) == ID_CAPTURE_MOUSE)
        {

            VdmMenuPos = i - 1;
            return TRUE;
        }
    }
    return FALSE;
}
