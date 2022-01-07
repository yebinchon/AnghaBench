
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbSize; scalar_t__ dwMenuData; int fMask; } ;
typedef TYPE_1__ MENUINFO ;
typedef int * LPFMINFO ;
typedef int HMENU ;


 int ERR (char*,int *,int) ;
 int GetMenuInfo (int ,TYPE_1__*) ;
 int MIM_MENUDATA ;

__attribute__((used)) static LPFMINFO FM_GetMenuInfo(HMENU hmenu)
{
 MENUINFO MenuInfo;
 LPFMINFO menudata;

 MenuInfo.cbSize = sizeof(MENUINFO);
 MenuInfo.fMask = MIM_MENUDATA;

 if (! GetMenuInfo(hmenu, &MenuInfo))
   return ((void*)0);

 menudata = (LPFMINFO)MenuInfo.dwMenuData;

 if ((menudata == 0) || (MenuInfo.cbSize != sizeof(MENUINFO)))
 {
   ERR("menudata corrupt: %p %u\n", menudata, MenuInfo.cbSize);
   return 0;
 }

 return menudata;

}
