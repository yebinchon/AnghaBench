
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ LONG ;
typedef int * HKEY ;
typedef int HANDLE ;
typedef int DWORD ;


 int DPRINT1 (char*,...) ;
 scalar_t__ ERROR_SUCCESS ;
 int GetUserSidStringFromToken (int ,TYPE_1__*) ;
 int HKEY_USERS ;
 int MAXIMUM_ALLOWED ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int ,int **) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int SetLastError (int ) ;

__attribute__((used)) static
HKEY
GetCurrentUserKey(HANDLE hToken)
{
    LONG Error;
    UNICODE_STRING SidString;
    HKEY hKey;

    if (!GetUserSidStringFromToken(hToken, &SidString))
    {
        DPRINT1("GetUserSidFromToken() failed\n");
        return ((void*)0);
    }

    Error = RegOpenKeyExW(HKEY_USERS,
                          SidString.Buffer,
                          0,
                          MAXIMUM_ALLOWED,
                          &hKey);
    if (Error != ERROR_SUCCESS)
    {
        DPRINT1("RegOpenKeyExW() failed (Error %ld)\n", Error);
        RtlFreeUnicodeString(&SidString);
        SetLastError((DWORD)Error);
        return ((void*)0);
    }

    RtlFreeUnicodeString(&SidString);

    return hKey;
}
