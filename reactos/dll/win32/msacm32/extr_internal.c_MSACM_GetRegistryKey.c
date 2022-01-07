
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* pszDriverAlias; } ;
typedef TYPE_1__ WINE_ACMDRIVERID ;
typedef char WCHAR ;
typedef int * LPWSTR ;


 int CharLowerW (int *) ;
 int ERR (char*) ;
 int * HeapAlloc (int ,int ,int) ;
 int MSACM_hHeap ;
 int lstrcpyW (int *,char const*) ;
 int lstrlenW (char const*) ;

__attribute__((used)) static LPWSTR MSACM_GetRegistryKey(const WINE_ACMDRIVERID* padid)
{
    static const WCHAR baseKey[] = {'S','o','f','t','w','a','r','e','\\','M','i','c','r','o','s','o','f','t','\\',
                                     'A','u','d','i','o','C','o','m','p','r','e','s','s','i','o','n','M','a','n','a','g','e','r','\\',
                                     'D','r','i','v','e','r','C','a','c','h','e','\\','\0'};
    LPWSTR ret;
    int len;

    if (!padid->pszDriverAlias) {
 ERR("No alias needed for registry entry\n");
 return ((void*)0);
    }
    len = lstrlenW(baseKey);
    ret = HeapAlloc(MSACM_hHeap, 0, (len + lstrlenW(padid->pszDriverAlias) + 1) * sizeof(WCHAR));
    if (!ret) return ((void*)0);

    lstrcpyW(ret, baseKey);
    lstrcpyW(ret + len, padid->pszDriverAlias);
    CharLowerW(ret + len);
    return ret;
}
