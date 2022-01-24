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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITravelLogClient ;
typedef  int /*<<< orphan*/  IObjectIdentity ;
typedef  int /*<<< orphan*/  IHTMLWindow4 ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLFrameBase ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ET_FRAME ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLWindow2 ; 
 int /*<<< orphan*/  IID_IHTMLWindow4 ; 
 int /*<<< orphan*/  IID_IObjectIdentity ; 
 int /*<<< orphan*/  IID_ITravelLogClient ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  obj_ident_test ; 
 int /*<<< orphan*/  FUNC14 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static void FUNC20(IDispatch *disp, const char *exp_id)
{
    IHTMLWindow2 *frame2, *parent, *top;
    IHTMLDocument2 *parent_doc, *top_doc;
    IHTMLWindow4 *frame;
    IHTMLFrameBase *frame_elem;
    IObjectIdentity *obj_ident;
    ITravelLogClient *tlc;
    HRESULT hres;

    hres = FUNC1(disp, &IID_IHTMLWindow4, (void**)&frame);
    FUNC14(hres == S_OK, "Could not get IHTMLWindow4 interface: 0x%08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC10(frame, &frame_elem);
    FUNC14(hres == S_OK, "IHTMLWindow4_get_frameElement failed: 0x%08x\n", hres);
    FUNC9(frame);
    if(FUNC0(hres))
        return;

    FUNC17((IUnknown*)frame_elem, ET_FRAME);
    FUNC18((IUnknown*)frame_elem, FALSE);
    FUNC16((IUnknown*)frame_elem, exp_id);
    FUNC3(frame_elem);

    hres = FUNC1(disp, &IID_IHTMLWindow2, (void**)&frame2);
    FUNC14(hres == S_OK, "Could not get IHTMLWindow2 interface: 0x%08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC7(frame2, &parent);
    FUNC14(hres == S_OK, "IHTMLWindow2_get_parent failed: 0x%08x\n", hres);
    if(FUNC0(hres)){
        FUNC5(frame2);
        return;
    }

    hres = FUNC4(frame2, &IID_IObjectIdentity, (void**)&obj_ident);
    FUNC14(hres == S_OK, "Could not get IObjectIdentity interface: %08x\n", hres);
    hres = FUNC4(frame2, &IID_ITravelLogClient, (void**)&tlc);
    if(hres == E_NOINTERFACE) {
        FUNC19("IID_ITravelLogClient not available\n");
        tlc = NULL;
    }else {
        FUNC14(hres == S_OK, "Could not get ITravelLogClient interface: %08x\n", hres);

        hres = FUNC11(obj_ident, (IUnknown*)tlc);
        FUNC14(hres == S_OK, "IsEqualObject returned: 0x%08x\n", hres);
        FUNC13(tlc);
    }

    hres = FUNC11(obj_ident, (IUnknown*)obj_ident);
    FUNC14(hres == S_OK, "IsEqualObject returned: 0x%08x\n", hres);
    hres = FUNC11(obj_ident, (IUnknown*)parent);
    FUNC14(hres == S_FALSE, "IsEqualObject returned: 0x%08x\n", hres);
    hres = FUNC11(obj_ident, &obj_ident_test);
    FUNC14(hres == E_NOINTERFACE, "IsEqualObject returned: 0x%08x\n", hres);

    FUNC12(obj_ident);

    hres = FUNC6(parent, &parent_doc);
    FUNC14(hres == S_OK, "IHTMLWindow2_get_document failed: 0x%08x\n", hres);
    FUNC5(parent);
    if(FUNC0(hres)){
        FUNC5(frame2);
        return;
    }

    FUNC15(parent_doc, "frameset test");
    FUNC2(parent_doc);

    /* test get_top */
    hres = FUNC8(frame2, &top);
    FUNC14(hres == S_OK, "IHTMLWindow2_get_top failed: 0x%08x\n", hres);
    FUNC5(frame2);
    if(FUNC0(hres))
        return;

    hres = FUNC6(top, &top_doc);
    FUNC14(hres == S_OK, "IHTMLWindow2_get_document failed: 0x%08x\n", hres);
    FUNC5(top);
    if(FUNC0(hres))
        return;

    FUNC15(top_doc, "frameset test");
    FUNC2(top_doc);
}