#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  aftd ;
typedef  int /*<<< orphan*/  add ;
struct TYPE_10__ {int /*<<< orphan*/  cbwfx; int /*<<< orphan*/  dwFormatTag; } ;
struct TYPE_9__ {int cbStruct; int cFormatTags; int /*<<< orphan*/  fdwSupport; int /*<<< orphan*/  cFilterTags; } ;
struct TYPE_8__ {int cbStruct; unsigned int dwFormatTagIndex; int /*<<< orphan*/  cbFormatSize; int /*<<< orphan*/  dwFormatTag; } ;
struct TYPE_7__ {int cFormatTags; TYPE_5__* aFormatTag; int /*<<< orphan*/  pszDriverAlias; int /*<<< orphan*/  fdwSupport; int /*<<< orphan*/  cFilterTags; } ;
typedef  TYPE_1__* PWINE_ACMDRIVERID ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HACMDRIVERID ;
typedef  scalar_t__ HACMDRIVER ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_2__ ACMFORMATTAGDETAILSW ;
typedef  TYPE_3__ ACMDRIVERDETAILSW ;

/* Variables and functions */
 int /*<<< orphan*/  ACMDM_DRIVER_DETAILS ; 
 int /*<<< orphan*/  ACMDM_FORMATTAG_DETAILS ; 
 int /*<<< orphan*/  ACM_FORMATTAGDETAILSF_INDEX ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSACM_hHeap ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC7(PWINE_ACMDRIVERID padid)
{
    HACMDRIVER		        had = 0;
    unsigned int		        ntag;
    ACMDRIVERDETAILSW	        add;
    ACMFORMATTAGDETAILSW        aftd;

    if (FUNC5(&had, (HACMDRIVERID)padid, 0) != 0)
	return FALSE;

    padid->aFormatTag = NULL;
    add.cbStruct = sizeof(add);
    if (FUNC2(had, ACMDM_DRIVER_DETAILS, (LPARAM)&add,  0))
	goto errCleanUp;

    if (add.cFormatTags > 0) {
	padid->aFormatTag = FUNC0(MSACM_hHeap, HEAP_ZERO_MEMORY,
				      add.cFormatTags * sizeof(padid->aFormatTag[0]));
	if (!padid->aFormatTag) goto errCleanUp;
    }

    padid->cFormatTags = add.cFormatTags;
    padid->cFilterTags = add.cFilterTags;
    padid->fdwSupport  = add.fdwSupport;

    aftd.cbStruct = sizeof(aftd);

    for (ntag = 0; ntag < add.cFormatTags; ntag++) {
	aftd.dwFormatTagIndex = ntag;
	if (FUNC2(had, ACMDM_FORMATTAG_DETAILS, (LPARAM)&aftd, ACM_FORMATTAGDETAILSF_INDEX)) {
	    FUNC3("IIOs (%s)\n", FUNC6(padid->pszDriverAlias));
	    goto errCleanUp;
	}
	padid->aFormatTag[ntag].dwFormatTag = aftd.dwFormatTag;
	padid->aFormatTag[ntag].cbwfx = aftd.cbFormatSize;
    }

    FUNC4(had, 0);

    return TRUE;

errCleanUp:
    if (had) FUNC4(had, 0);
    FUNC1(MSACM_hHeap, 0, padid->aFormatTag);
    padid->aFormatTag = NULL;
    return FALSE;
}