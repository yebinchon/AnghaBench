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
typedef  int /*<<< orphan*/  IOleControl ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISPID_AMBIENT_PALETTE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IOleControl ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(IHTMLDocument2 *doc)
{
    IOleControl *control = NULL;
    HRESULT hres;

    hres = FUNC1(doc, &IID_IOleControl, (void**)&control);
    FUNC4(hres == S_OK, "QueryInterface(IID_IOleControl failed: %08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC2(control, DISPID_AMBIENT_PALETTE);
    FUNC4(hres == S_OK, "OnAmbientPropertyChange failed: %08x\n", hres);

    FUNC3(control);
}