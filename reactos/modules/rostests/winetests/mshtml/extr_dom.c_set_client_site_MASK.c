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
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  IHlinkTarget ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ClientSite ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHlinkTarget ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * view ; 

__attribute__((used)) static void FUNC11(IHTMLDocument2 *doc, BOOL set)
{
    IOleObject *oleobj;
    HRESULT hres;

    if(!set && view) {
        FUNC6(view, FALSE);
        FUNC3(view, 0);
        FUNC5(view, NULL);
        FUNC4(view);
        view = NULL;
    }

    hres = FUNC0(doc, &IID_IOleObject, (void**)&oleobj);
    FUNC10(hres == S_OK, "Could not et IOleObject: %08x\n", hres);

    hres = FUNC9(oleobj, set ? &ClientSite : NULL);
    FUNC10(hres == S_OK, "SetClientSite failed: %08x\n", hres);

    if(set) {
        IHlinkTarget *hlink;

        hres = FUNC7(oleobj, &IID_IHlinkTarget, (void**)&hlink);
        FUNC10(hres == S_OK, "Could not get IHlinkTarget iface: %08x\n", hres);

        hres = FUNC1(hlink, 0, NULL);
        FUNC10(hres == S_OK, "Navgate failed: %08x\n", hres);

        FUNC2(hlink);
    }

    FUNC8(oleobj);
}