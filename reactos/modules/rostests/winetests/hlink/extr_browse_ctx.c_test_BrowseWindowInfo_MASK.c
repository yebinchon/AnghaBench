#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int left; int right; int top; int bottom; } ;
struct TYPE_14__ {int uDockType; TYPE_3__ rcTbPos; } ;
struct TYPE_12__ {int left; int right; int top; int bottom; } ;
struct TYPE_11__ {int left; int right; int top; int bottom; } ;
struct TYPE_15__ {scalar_t__ cbSize; TYPE_4__ hltbinfo; TYPE_2__ rcDocPos; TYPE_1__ rcFramePos; int /*<<< orphan*/  grfHLBWIF; } ;
typedef  int /*<<< orphan*/  IHlinkBrowseContext ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_5__ HLBWINFO ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  HLBWIF_WEBTOOLBARHIDDEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  IID_IHlinkBrowseContext ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(void)
{
    IHlinkBrowseContext *bc;
    HLBWINFO bwinfo_set, bwinfo_get;
    HRESULT hres;

    hres = FUNC0(NULL, &IID_IHlinkBrowseContext, (void**)&bc);
    FUNC6(hres == S_OK, "HlinkCreateBrowseContext failed: 0x%08x\n", hres);

    hres = FUNC1(bc, NULL);
    FUNC6(hres == E_INVALIDARG, "GetBrowseWindow failed with wrong code: 0x%08x\n", hres);

    hres = FUNC3(bc, NULL);
    FUNC6(hres == E_INVALIDARG, "SetBrowseWindow failed with wrong code: 0x%08x\n", hres);

    FUNC5(&bwinfo_get, -1, sizeof(HLBWINFO));

    hres = FUNC1(bc, &bwinfo_get);
    FUNC6(hres == S_OK, "GetBrowseWindowInfo failed: 0x%08x\n", hres);
    FUNC6(bwinfo_get.cbSize == 0, "Got wrong size: %x\n", bwinfo_get.cbSize);

    bwinfo_set.cbSize = sizeof(HLBWINFO);
    bwinfo_set.grfHLBWIF = HLBWIF_WEBTOOLBARHIDDEN;
    bwinfo_set.rcFramePos.left = 1;
    bwinfo_set.rcFramePos.right = 2;
    bwinfo_set.rcFramePos.top = 3;
    bwinfo_set.rcFramePos.bottom = 4;
    bwinfo_set.rcDocPos.left = 5;
    bwinfo_set.rcDocPos.right = 6;
    bwinfo_set.rcDocPos.top = 7;
    bwinfo_set.rcDocPos.bottom = 8;
    bwinfo_set.hltbinfo.uDockType = 4321;
    bwinfo_set.hltbinfo.rcTbPos.left = 9;
    bwinfo_set.hltbinfo.rcTbPos.right = 10;
    bwinfo_set.hltbinfo.rcTbPos.top = 11;
    bwinfo_set.hltbinfo.rcTbPos.bottom = 12;
    hres = FUNC3(bc, &bwinfo_set);
    FUNC6(hres == S_OK, "SetBrowseWindowInfo failed: 0x%08x\n", hres);

    FUNC5(&bwinfo_get, 0, sizeof(HLBWINFO));

    hres = FUNC1(bc, &bwinfo_get);
    FUNC6(hres == S_OK, "GetBrowseWindowInfo failed: 0x%08x\n", hres);
    FUNC6(!FUNC4(&bwinfo_set, &bwinfo_get, sizeof(HLBWINFO)), "Set and Get differ\n");

    FUNC2(bc);
}