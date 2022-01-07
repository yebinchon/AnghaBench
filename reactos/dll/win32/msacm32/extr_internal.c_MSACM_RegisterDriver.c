
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WINE_ACMDRIVERID ;
typedef int WCHAR ;
struct TYPE_11__ {TYPE_2__* pACMDriverID; int dwType; } ;
struct TYPE_12__ {int fdwSupport; struct TYPE_12__* pszDriverAlias; struct TYPE_12__* pNextACMDriverID; struct TYPE_12__* pPrevACMDriverID; int * pACMDriverList; scalar_t__ pLocalDriver; struct TYPE_12__* pszFileName; TYPE_1__ obj; } ;
typedef scalar_t__ PWINE_ACMLOCALDRIVER ;
typedef TYPE_2__* PWINE_ACMDRIVERID ;
typedef int LPCWSTR ;


 int ACMDRIVERDETAILS_SUPPORTF_LOCAL ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int MSACM_FillCache (TYPE_2__*) ;
 int MSACM_ReadCache (TYPE_2__*) ;
 int MSACM_UnregisterDriver (TYPE_2__*) ;
 int MSACM_hHeap ;
 TYPE_2__* MSACM_pFirstACMDriverID ;
 TYPE_2__* MSACM_pLastACMDriverID ;
 int TRACE (char*,int ,int ,scalar_t__) ;
 int WARN (char*,int ) ;
 int WINE_ACMOBJ_DRIVERID ;
 int debugstr_w (int ) ;
 int lstrcpyW (TYPE_2__*,int ) ;
 int lstrlenW (int ) ;

PWINE_ACMDRIVERID MSACM_RegisterDriver(LPCWSTR pszDriverAlias, LPCWSTR pszFileName,
           PWINE_ACMLOCALDRIVER pLocalDriver)
{
    PWINE_ACMDRIVERID padid;

    TRACE("(%s, %s, %p)\n",
          debugstr_w(pszDriverAlias), debugstr_w(pszFileName), pLocalDriver);

    padid = HeapAlloc(MSACM_hHeap, 0, sizeof(WINE_ACMDRIVERID));
    if (!padid)
        return ((void*)0);
    padid->obj.dwType = WINE_ACMOBJ_DRIVERID;
    padid->obj.pACMDriverID = padid;
    padid->pszDriverAlias = ((void*)0);
    if (pszDriverAlias)
    {
        padid->pszDriverAlias = HeapAlloc( MSACM_hHeap, 0, (lstrlenW(pszDriverAlias)+1) * sizeof(WCHAR) );
        if (!padid->pszDriverAlias) {
            HeapFree(MSACM_hHeap, 0, padid);
            return ((void*)0);
        }
        lstrcpyW( padid->pszDriverAlias, pszDriverAlias );
    }
    padid->pszFileName = ((void*)0);
    if (pszFileName)
    {
        padid->pszFileName = HeapAlloc( MSACM_hHeap, 0, (lstrlenW(pszFileName)+1) * sizeof(WCHAR) );
        if (!padid->pszFileName) {
            HeapFree(MSACM_hHeap, 0, padid->pszDriverAlias);
            HeapFree(MSACM_hHeap, 0, padid);
            return ((void*)0);
        }
        lstrcpyW( padid->pszFileName, pszFileName );
    }
    padid->pLocalDriver = pLocalDriver;

    padid->pACMDriverList = ((void*)0);

    if (pLocalDriver) {
        padid->pPrevACMDriverID = ((void*)0);
        padid->pNextACMDriverID = MSACM_pFirstACMDriverID;
        if (MSACM_pFirstACMDriverID)
            MSACM_pFirstACMDriverID->pPrevACMDriverID = padid;
        MSACM_pFirstACMDriverID = padid;
        if (!MSACM_pLastACMDriverID)
            MSACM_pLastACMDriverID = padid;
    } else {
        padid->pNextACMDriverID = ((void*)0);
        padid->pPrevACMDriverID = MSACM_pLastACMDriverID;
        if (MSACM_pLastACMDriverID)
     MSACM_pLastACMDriverID->pNextACMDriverID = padid;
        MSACM_pLastACMDriverID = padid;
        if (!MSACM_pFirstACMDriverID)
     MSACM_pFirstACMDriverID = padid;
    }

    if ((!padid->pszDriverAlias || !MSACM_ReadCache(padid)) && !MSACM_FillCache(padid)) {
 WARN("Couldn't load cache for ACM driver (%s)\n", debugstr_w(pszFileName));
 MSACM_UnregisterDriver(padid);
 return ((void*)0);
    }

    if (pLocalDriver) padid->fdwSupport |= ACMDRIVERDETAILS_SUPPORTF_LOCAL;
    return padid;
}
