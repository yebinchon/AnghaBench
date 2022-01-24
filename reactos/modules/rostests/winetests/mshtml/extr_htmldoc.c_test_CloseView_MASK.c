#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IOleInPlaceSite ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  view ; 

__attribute__((used)) static void FUNC5(void)
{
    IOleInPlaceSite *inplacesite = (IOleInPlaceSite*)0xff00ff00;
    HRESULT hres;

    if(!view)
        return;

    hres = FUNC3(view, FALSE);
    FUNC4(hres == S_OK, "Show failed: %08x\n", hres);

    hres = FUNC0(view, 0);
    FUNC4(hres == S_OK, "CloseView failed: %08x\n", hres);

    hres = FUNC2(view, NULL);
    FUNC4(hres == S_OK, "SetInPlaceSite failed: %08x\n", hres);

    hres = FUNC1(view, &inplacesite);
    FUNC4(hres == S_OK, "SetInPlaceSite failed: %08x\n", hres);
    FUNC4(inplacesite == NULL, "inplacesite=%p, expected NULL\n", inplacesite);
}