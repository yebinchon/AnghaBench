#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int VARTYPE ;
typedef  int ULONG ;
struct TYPE_13__ {int /*<<< orphan*/  cElements; int /*<<< orphan*/  lLbound; } ;
struct TYPE_12__ {int cDims; int fFeatures; int cLocks; TYPE_6__* rgsabound; } ;
struct TYPE_11__ {int /*<<< orphan*/  cElements; int /*<<< orphan*/  lLbound; } ;
typedef  int SF_TYPE ;
typedef  TYPE_1__ SAFEARRAYBOUND ;
typedef  TYPE_2__* LPSAFEARRAY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int SF_HAVEIID ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int*) ; 

__attribute__((used)) static void FUNC9(void *buffer, LPSAFEARRAY lpsa)
{
    unsigned char *wiresa = buffer;
    const SAFEARRAYBOUND *bounds;
    VARTYPE vt;
    SF_TYPE sftype;
    ULONG cell_count;
    int i;

    if(!lpsa)
    {
        FUNC6(*(DWORD *)wiresa == 0, "wiresa + 0x0 should be NULL instead of 0x%08x\n", *(DWORD *)wiresa);
        return;
    }

    if (!&pSafeArrayGetVartype || !&pSafeArrayGetIID)
        return;

    if(FUNC0(FUNC8(lpsa, &vt)))
        vt = 0;

    sftype = FUNC4(lpsa);
    cell_count = FUNC3(lpsa);

    FUNC6(*(DWORD *)wiresa, "wiresa + 0x0 should be non-NULL instead of 0x%08x\n", *(DWORD *)wiresa); /* win2k: this is lpsa. winxp: this is 0x00000001 */
    wiresa += sizeof(DWORD);
    FUNC6(*(DWORD *)wiresa == lpsa->cDims, "wiresa + 0x4 should be lpsa->cDims instead of 0x%08x\n", *(DWORD *)wiresa);
    wiresa += sizeof(DWORD);
    FUNC6(*(WORD *)wiresa == lpsa->cDims, "wiresa + 0x8 should be lpsa->cDims instead of 0x%04x\n", *(WORD *)wiresa);
    wiresa += sizeof(WORD);
    FUNC6(*(WORD *)wiresa == lpsa->fFeatures, "wiresa + 0xa should be lpsa->fFeatures instead of 0x%08x\n", *(WORD *)wiresa);
    wiresa += sizeof(WORD);
    FUNC6(*(DWORD *)wiresa == FUNC2(lpsa, sftype), "wiresa + 0xc should be 0x%08x instead of 0x%08x\n", FUNC2(lpsa, sftype), *(DWORD *)wiresa);
    wiresa += sizeof(DWORD);
    FUNC6(*(WORD *)wiresa == lpsa->cLocks, "wiresa + 0x10 should be lpsa->cLocks instead of 0x%04x\n", *(WORD *)wiresa);
    wiresa += sizeof(WORD);
    FUNC6(*(WORD *)wiresa == vt, "wiresa + 0x12 should be %04x instead of 0x%04x\n", vt, *(WORD *)wiresa);
    wiresa += sizeof(WORD);
    FUNC6(*(DWORD *)wiresa == sftype, "wiresa + 0x14 should be %08x instead of 0x%08x\n", (DWORD)sftype, *(DWORD *)wiresa);
    wiresa += sizeof(DWORD);
    FUNC6(*(DWORD *)wiresa == cell_count, "wiresa + 0x18 should be %u instead of %u\n", cell_count, *(DWORD *)wiresa);
    wiresa += sizeof(DWORD);
    FUNC6(*(DWORD *)wiresa, "wiresa + 0x1c should be non-zero instead of 0x%08x\n", *(DWORD *)wiresa);
    wiresa += sizeof(DWORD);
    if(sftype == SF_HAVEIID)
    {
        GUID guid;
        FUNC7(lpsa, &guid);
        FUNC6(FUNC1(&guid, wiresa), "guid mismatch\n");
        wiresa += sizeof(GUID);
    }

    /* bounds are marshaled in natural dimensions order */
    bounds = (SAFEARRAYBOUND*)wiresa;
    for(i=0; i<lpsa->cDims; i++)
    {
        FUNC6(FUNC5(bounds, &lpsa->rgsabound[lpsa->cDims-i-1], sizeof(SAFEARRAYBOUND)) == 0,
           "bounds mismatch for dimension %d, got (%d,%d), expected (%d,%d)\n", i,
            bounds->lLbound, bounds->cElements, lpsa->rgsabound[lpsa->cDims-i-1].lLbound,
            lpsa->rgsabound[lpsa->cDims-i-1].cElements);
        bounds++;
    }

    wiresa += sizeof(lpsa->rgsabound[0]) * lpsa->cDims;

    FUNC6(*(DWORD *)wiresa == cell_count, "wiresa + 0x28 should be %u instead of %u\n", cell_count, *(DWORD*)wiresa);
    wiresa += sizeof(DWORD);
    /* elements are now pointed to by wiresa */
}