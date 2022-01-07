
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hTheme; } ;
typedef int PUXINI_FILE ;
typedef TYPE_1__* PTHEME_FILE ;


 int UXINI_LoadINI (int ,int ) ;
 int szThemesIniResource ;

PUXINI_FILE MSSTYLES_GetThemeIni(PTHEME_FILE tf)
{
    return UXINI_LoadINI(tf->hTheme, szThemesIniResource);
}
