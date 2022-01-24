#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT_PTR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {void* dwClientInstance; void* dwCallback; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__* LPWINE_MLD ;
typedef  scalar_t__* LPHANDLE ;
typedef  scalar_t__ HANDLE ;
typedef  void* DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 size_t MAX_MM_MLDRVS ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__** MM_MLDrvs ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,void**,void**) ; 

LPWINE_MLD	FUNC7(UINT size, UINT type, LPHANDLE hndl, DWORD* dwFlags,
			    DWORD_PTR* dwCallback, DWORD_PTR* dwInstance)
{
    LPWINE_MLD	mld;
    UINT_PTR i;
    FUNC6("(%d, %04x, %p, %p, %p, %p)\n",
          size, type, hndl, dwFlags, dwCallback, dwInstance);

    mld = FUNC3(FUNC1(), HEAP_ZERO_MEMORY, size);
    if (!mld)	return NULL;

    /* find an empty slot in MM_MLDrvs table */
    for (i = 0; i < MAX_MM_MLDRVS; i++) if (!MM_MLDrvs[i]) break;

    if (i == MAX_MM_MLDRVS) {
	/* the MM_MLDrvs table could be made growable in the future if needed */
	FUNC0("Too many open drivers\n");
        FUNC4(FUNC1(), 0, mld);
	return NULL;
    }
    MM_MLDrvs[i] = mld;
    *hndl = (HANDLE)(i | 0x8000);

    mld->type = type;
    if ((UINT_PTR)*hndl < FUNC5(type) || ((UINT_PTR)*hndl >> 16)) {
	/* FIXME: those conditions must be fulfilled so that:
	 * - we can distinguish between device IDs and handles
	 * - we can use handles as 16 or 32 bit entities
	 */
	FUNC0("Shouldn't happen. Bad allocation scheme\n");
    }

    mld->dwFlags = FUNC2(*dwFlags);
    mld->dwCallback = *dwCallback;
    mld->dwClientInstance = *dwInstance;

    return mld;
}