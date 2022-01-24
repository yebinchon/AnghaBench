#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ddsd ;
struct TYPE_5__ {int /*<<< orphan*/  dwCaps; } ;
struct TYPE_6__ {int dwSize; TYPE_1__ ddsCaps; int /*<<< orphan*/  dwFlags; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IDirectDraw ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_2__ DDSURFACEDESC2 ;

/* Variables and functions */
 int /*<<< orphan*/  DDSCAPS_PRIMARYSURFACE ; 
 int /*<<< orphan*/  DDSCL_NORMAL ; 
 int /*<<< orphan*/  DDSD_CAPS ; 
 scalar_t__ DD_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_2__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirectDraw7 ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 scalar_t__ pdd7 ; 
 scalar_t__ pdds7 ; 

__attribute__((used)) static int FUNC10(void)
{
    HRESULT hr;
    IDirectDraw* pdd = NULL;
    DDSURFACEDESC2 ddsd;

    hr = FUNC0(NULL, &pdd, NULL);
    FUNC9(hr==DD_OK, "DirectDrawCreate returned: %x\n", hr);
    if (hr != DD_OK)
       goto error;

    hr = FUNC6(pdd, &IID_IDirectDraw7, (LPVOID*)&pdd7);
    FUNC9(hr==DD_OK, "QueryInterface returned: %x\n", hr);
    if (hr != DD_OK) goto error;

    hr = FUNC4(pdd7, FUNC1(), DDSCL_NORMAL);
    FUNC9(hr==DD_OK, "SetCooperativeLevel returned: %x\n", hr);

    FUNC8(&ddsd, sizeof(ddsd));
    ddsd.dwSize = sizeof(ddsd);
    ddsd.dwFlags = DDSD_CAPS;
    ddsd.ddsCaps.dwCaps = DDSCAPS_PRIMARYSURFACE;
    hr = FUNC2(pdd7, &ddsd, &pdds7, NULL);
    FUNC9(hr==DD_OK, "CreateSurface returned: %x\n", hr);

    return TRUE;

error:
    if (pdds7)
        FUNC5(pdds7);
    if (pdd7)
        FUNC3(pdd7);
    if (pdd)
        FUNC7(pdd);

    return FALSE;
}