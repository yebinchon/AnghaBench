
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cFormatTags; int * aFormatTag; int fdwSupport; int cFilterTags; } ;
typedef TYPE_1__* PWINE_ACMDRIVERID ;
typedef int * LPWSTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_LOCAL_MACHINE ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int * MSACM_GetRegistryKey (TYPE_1__*) ;
 int MSACM_hHeap ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyW (int ,int *,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int ,int*,void*,int*) ;
 int TRUE ;

__attribute__((used)) static BOOL MSACM_ReadCache(PWINE_ACMDRIVERID padid)
{
    LPWSTR key = MSACM_GetRegistryKey(padid);
    HKEY hKey;
    DWORD type, size;

    if (!key) return FALSE;

    padid->aFormatTag = ((void*)0);

    if (RegCreateKeyW(HKEY_LOCAL_MACHINE, key, &hKey))
 goto errCleanUp;

    size = sizeof(padid->cFormatTags);
    if (RegQueryValueExA(hKey, "cFormatTags", 0, &type, (void*)&padid->cFormatTags, &size))
 goto errCleanUp;
    size = sizeof(padid->cFilterTags);
    if (RegQueryValueExA(hKey, "cFilterTags", 0, &type, (void*)&padid->cFilterTags, &size))
 goto errCleanUp;
    size = sizeof(padid->fdwSupport);
    if (RegQueryValueExA(hKey, "fdwSupport", 0, &type, (void*)&padid->fdwSupport, &size))
 goto errCleanUp;

    if (padid->cFormatTags > 0) {
 size = padid->cFormatTags * sizeof(padid->aFormatTag[0]);
 padid->aFormatTag = HeapAlloc(MSACM_hHeap, HEAP_ZERO_MEMORY, size);
 if (!padid->aFormatTag) goto errCleanUp;
 if (RegQueryValueExA(hKey, "aFormatTagCache", 0, &type, (void*)padid->aFormatTag, &size))
     goto errCleanUp;
    }
    HeapFree(MSACM_hHeap, 0, key);
    return TRUE;

 errCleanUp:
    HeapFree(MSACM_hHeap, 0, key);
    HeapFree(MSACM_hHeap, 0, padid->aFormatTag);
    padid->aFormatTag = ((void*)0);
    RegCloseKey(hKey);
    return FALSE;
}
