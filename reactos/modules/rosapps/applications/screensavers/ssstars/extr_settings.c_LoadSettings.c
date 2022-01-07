
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ uiNumStars; scalar_t__ uiSpeed; scalar_t__ uiRotation; scalar_t__ bDoBlending; scalar_t__ bFinePerspective; scalar_t__ bEnableFiltering; scalar_t__ bSmoothShading; } ;
typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 TYPE_1__ FactoryDefaults ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 scalar_t__ MAX_SPEED ;
 scalar_t__ MAX_STARS ;
 scalar_t__ MIN_SPEED ;
 scalar_t__ MIN_STARS ;
 void* QueryDWORD (int ,int ,scalar_t__) ;
 scalar_t__ ROTATION_LINEAR ;
 scalar_t__ ROTATION_NONE ;
 scalar_t__ ROTATION_PERIODIC ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int ,int ,int ,int *,int *,int *) ;
 TYPE_1__ Settings ;
 int _T (char*) ;

void LoadSettings(void)
{
    HKEY hKey;
    LONG lRes;

    Settings = FactoryDefaults;

    lRes = RegCreateKeyEx(
            HKEY_CURRENT_USER,
            _T("Software\\Microsoft\\ScreenSavers\\Ssstars"),
            0,
            _T(""),
            0,
            KEY_READ,
            ((void*)0),
            &hKey,
            ((void*)0));

    if (lRes != ERROR_SUCCESS)
        return;

    Settings.uiNumStars = QueryDWORD(hKey, _T("NumberOfStars"), Settings.uiNumStars);
    Settings.uiSpeed = QueryDWORD(hKey, _T("Speed"), Settings.uiSpeed);
    Settings.uiRotation = QueryDWORD(hKey, _T("TypeOfRotation"), Settings.uiRotation);

    Settings.bDoBlending = QueryDWORD(hKey, _T("DoBlending"), Settings.bDoBlending);
    Settings.bFinePerspective = QueryDWORD(hKey, _T("FinePerspective"), Settings.bFinePerspective);
    Settings.bEnableFiltering = QueryDWORD(hKey, _T("EnableFiltering"), Settings.bEnableFiltering);
    Settings.bSmoothShading = QueryDWORD(hKey, _T("SmoothShading"), Settings.bSmoothShading);


    if (Settings.uiNumStars < MIN_STARS)
        Settings.uiNumStars = MIN_STARS;
    else
    if (Settings.uiNumStars > MAX_STARS)
        Settings.uiNumStars = MAX_STARS;


    if (Settings.uiSpeed < MIN_SPEED)
        Settings.uiSpeed = MIN_SPEED;
    else
    if (Settings.uiSpeed > MAX_SPEED)
        Settings.uiSpeed = MAX_SPEED;


    if (Settings.uiRotation != ROTATION_NONE &&
        Settings.uiRotation != ROTATION_LINEAR &&
        Settings.uiRotation != ROTATION_PERIODIC)
        Settings.uiRotation = ROTATION_PERIODIC;

    RegCloseKey(hKey);
}
