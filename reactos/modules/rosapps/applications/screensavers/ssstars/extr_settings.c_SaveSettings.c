
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bSmoothShading; int bEnableFiltering; int bFinePerspective; int bDoBlending; int uiRotation; int uiSpeed; int uiNumStars; } ;
typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_WRITE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int ,int ,int ,int *,int *,int *) ;
 int SaveDWORD (int ,int ,int ) ;
 TYPE_1__ Settings ;
 int _T (char*) ;

void SaveSettings(void)
{
    HKEY hKey;
    LONG lRes;

    lRes = RegCreateKeyEx(
            HKEY_CURRENT_USER,
            _T("Software\\Microsoft\\ScreenSavers\\Ssstars"),
            0,
            _T(""),
            0,
            KEY_WRITE,
            ((void*)0),
            &hKey,
            ((void*)0));

    if (lRes != ERROR_SUCCESS)
        return;

    SaveDWORD(hKey, _T("NumberOfStars"), Settings.uiNumStars);
    SaveDWORD(hKey, _T("Speed"), Settings.uiSpeed);
    SaveDWORD(hKey, _T("TypeOfRotation"), Settings.uiRotation);

    SaveDWORD(hKey, _T("DoBlending"), Settings.bDoBlending);
    SaveDWORD(hKey, _T("FinePerspective"), Settings.bFinePerspective);
    SaveDWORD(hKey, _T("EnableFiltering"), Settings.bEnableFiltering);
    SaveDWORD(hKey, _T("SmoothShading"), Settings.bSmoothShading);

    RegCloseKey(hKey);
}
