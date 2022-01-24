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
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLFrameElement3 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLFrameElement3 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  window_iids ; 

__attribute__((used)) static void FUNC14(IUnknown *frame_elem, BOOL iframe)
{
    IHTMLDocument2 *window_doc, *elem_doc;
    IHTMLFrameElement3 *frame_elem3;
    IHTMLWindow2 *content_window;
    HRESULT hres;

    content_window = FUNC8(frame_elem);
    FUNC12((IUnknown*)content_window, window_iids);
    window_doc = FUNC9(content_window);
    FUNC4(content_window);

    elem_doc = FUNC7(frame_elem);
    FUNC11(FUNC10((IUnknown*)window_doc, (IUnknown*)elem_doc), "content_doc != elem_doc\n");

    if(!iframe) {
        hres = FUNC5(frame_elem, &IID_IHTMLFrameElement3, (void**)&frame_elem3);
        if(FUNC6(hres)) {
            IDispatch *disp = NULL;

            hres = FUNC3(frame_elem3, &disp);
            FUNC11(hres == S_OK, "get_contentDocument failed: %08x\n", hres);
            FUNC11(disp != NULL, "contentDocument == NULL\n");
            FUNC11(FUNC10((IUnknown*)disp, (IUnknown*)window_doc), "contentDocument != contentWindow.document\n");

            FUNC0(disp);
            FUNC2(frame_elem3);
        }else {
            FUNC13("IHTMLFrameElement3 not supported\n");
        }
    }

    FUNC1(elem_doc);
    FUNC1(window_doc);
}