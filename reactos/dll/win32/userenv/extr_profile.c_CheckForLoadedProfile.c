
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int HKEY ;
typedef int HANDLE ;
typedef int BOOL ;


 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int FALSE ;
 int GetUserSidStringFromToken (int ,TYPE_1__*) ;
 int HKEY_USERS ;
 int MAXIMUM_ALLOWED ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static
BOOL
CheckForLoadedProfile(HANDLE hToken)
{
    UNICODE_STRING SidString;
    HKEY hKey;

    DPRINT("CheckForLoadedProfile() called\n");


    if (!GetUserSidStringFromToken(hToken, &SidString))
    {
        DPRINT1("GetUserSidStringFromToken() failed\n");
        return FALSE;
    }

    if (RegOpenKeyExW(HKEY_USERS,
                      SidString.Buffer,
                      0,
                      MAXIMUM_ALLOWED,
                      &hKey))
    {
        DPRINT("Profile not loaded\n");
        RtlFreeUnicodeString(&SidString);
        return FALSE;
    }

    RegCloseKey(hKey);

    RtlFreeUnicodeString(&SidString);

    DPRINT("Profile already loaded\n");

    return TRUE;
}
