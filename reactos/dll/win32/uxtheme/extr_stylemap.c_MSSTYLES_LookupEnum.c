
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwEnum; int dwValue; scalar_t__* szValueName; } ;
typedef int LPCWSTR ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int lstrcmpiW (scalar_t__*,int ) ;
 TYPE_1__* mapEnum ;

BOOL MSSTYLES_LookupEnum(LPCWSTR pszValueName, int dwEnum, int *dwValue)
{
    DWORD item = 0;

    while(*mapEnum[item].szValueName && mapEnum[item].dwEnum != dwEnum) item++;

    while(*mapEnum[item].szValueName && mapEnum[item].dwEnum == dwEnum) {
        if(!lstrcmpiW(mapEnum[item].szValueName, pszValueName)) {
            if(dwValue) *dwValue = mapEnum[item].dwValue;
            return TRUE;
        }
        item++;
    }
    return FALSE;
}
