#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINE_ACMDRIVERID ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {TYPE_2__* pACMDriverID; int /*<<< orphan*/  dwType; } ;
struct TYPE_12__ {int /*<<< orphan*/  fdwSupport; struct TYPE_12__* pszDriverAlias; struct TYPE_12__* pNextACMDriverID; struct TYPE_12__* pPrevACMDriverID; int /*<<< orphan*/ * pACMDriverList; scalar_t__ pLocalDriver; struct TYPE_12__* pszFileName; TYPE_1__ obj; } ;
typedef  scalar_t__ PWINE_ACMLOCALDRIVER ;
typedef  TYPE_2__* PWINE_ACMDRIVERID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ACMDRIVERDETAILS_SUPPORTF_LOCAL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  MSACM_hHeap ; 
 TYPE_2__* MSACM_pFirstACMDriverID ; 
 TYPE_2__* MSACM_pLastACMDriverID ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINE_ACMOBJ_DRIVERID ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

PWINE_ACMDRIVERID FUNC10(LPCWSTR pszDriverAlias, LPCWSTR pszFileName,
				       PWINE_ACMLOCALDRIVER pLocalDriver)
{
    PWINE_ACMDRIVERID	padid;

    FUNC5("(%s, %s, %p)\n", 
          FUNC7(pszDriverAlias), FUNC7(pszFileName), pLocalDriver);

    padid = FUNC0(MSACM_hHeap, 0, sizeof(WINE_ACMDRIVERID));
    if (!padid)
        return NULL;
    padid->obj.dwType = WINE_ACMOBJ_DRIVERID;
    padid->obj.pACMDriverID = padid;
    padid->pszDriverAlias = NULL;
    if (pszDriverAlias)
    {
        padid->pszDriverAlias = FUNC0( MSACM_hHeap, 0, (FUNC9(pszDriverAlias)+1) * sizeof(WCHAR) );
        if (!padid->pszDriverAlias) {
            FUNC1(MSACM_hHeap, 0, padid);
            return NULL;
        }
        FUNC8( padid->pszDriverAlias, pszDriverAlias );
    }
    padid->pszFileName = NULL;
    if (pszFileName)
    {
        padid->pszFileName = FUNC0( MSACM_hHeap, 0, (FUNC9(pszFileName)+1) * sizeof(WCHAR) );
        if (!padid->pszFileName) {
            FUNC1(MSACM_hHeap, 0, padid->pszDriverAlias);
            FUNC1(MSACM_hHeap, 0, padid);
            return NULL;
        }
        FUNC8( padid->pszFileName, pszFileName );
    }
    padid->pLocalDriver = pLocalDriver;

    padid->pACMDriverList = NULL;
    
    if (pLocalDriver) {
        padid->pPrevACMDriverID = NULL;
        padid->pNextACMDriverID = MSACM_pFirstACMDriverID;
        if (MSACM_pFirstACMDriverID)
            MSACM_pFirstACMDriverID->pPrevACMDriverID = padid;
        MSACM_pFirstACMDriverID = padid;
        if (!MSACM_pLastACMDriverID)
            MSACM_pLastACMDriverID = padid;
    } else {
        padid->pNextACMDriverID = NULL;
        padid->pPrevACMDriverID = MSACM_pLastACMDriverID;
        if (MSACM_pLastACMDriverID)
	    MSACM_pLastACMDriverID->pNextACMDriverID = padid;
        MSACM_pLastACMDriverID = padid;
        if (!MSACM_pFirstACMDriverID)
	    MSACM_pFirstACMDriverID = padid;
    }
    /* disable the driver if we cannot load the cache */
    if ((!padid->pszDriverAlias || !FUNC3(padid)) && !FUNC2(padid)) {
	FUNC6("Couldn't load cache for ACM driver (%s)\n", FUNC7(pszFileName));
	FUNC4(padid);
	return NULL;
    }

    if (pLocalDriver) padid->fdwSupport |= ACMDRIVERDETAILS_SUPPORTF_LOCAL;
    return padid;
}