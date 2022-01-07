
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwPrimitiveType; int dwPropertyID; scalar_t__* szPropertyName; } ;
typedef int LPCWSTR ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int lstrcmpiW (scalar_t__*,int ) ;
 TYPE_1__* mapProperty ;

BOOL MSSTYLES_LookupProperty(LPCWSTR pszPropertyName, int *dwPrimitive, int *dwId)
{
    DWORD item = 0;
    do {
        if(!lstrcmpiW(mapProperty[item].szPropertyName, pszPropertyName)) {
            if(dwPrimitive) *dwPrimitive = mapProperty[item].dwPrimitiveType;
            if(dwId) *dwId = mapProperty[item].dwPropertyID;
            return TRUE;
        }
    } while(*mapProperty[++item].szPropertyName);
    return FALSE;
}
