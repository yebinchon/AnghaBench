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
typedef  int /*<<< orphan*/  IOleInPlaceObjectWindowless ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IOleInPlaceObjectWindowless ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OnFocus_FALSE ; 
 int /*<<< orphan*/  OnInPlaceDeactivate ; 
 int /*<<< orphan*/  OnInPlaceDeactivateEx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  SetStatusText ; 
 scalar_t__ ipsex ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(IHTMLDocument2 *doc, BOOL expect_call)
{
    IOleInPlaceObjectWindowless *windowlessobj = NULL;
    HRESULT hres;

    hres = FUNC3(doc, &IID_IOleInPlaceObjectWindowless,
            (void**)&windowlessobj);
    FUNC7(hres == S_OK, "QueryInterface(IID_IOleInPlaceObjectWindowless) failed: %08x\n", hres);
    if(FUNC2(hres))
        return;

    if(expect_call) {
        FUNC6(SetStatusText);
        FUNC6(OnFocus_FALSE);
        if(ipsex)
            FUNC6(OnInPlaceDeactivateEx);
        else
            FUNC6(OnInPlaceDeactivate);
    }
    hres = FUNC4(windowlessobj);
    FUNC7(hres == S_OK, "InPlaceDeactivate failed: %08x\n", hres);
    if(expect_call) {
        FUNC1(SetStatusText); /* Called by IE9 */
        FUNC0(OnFocus_FALSE);
        if(ipsex)
            FUNC0(OnInPlaceDeactivateEx);
        else
            FUNC0(OnInPlaceDeactivate);
    }

    FUNC5(windowlessobj);
}