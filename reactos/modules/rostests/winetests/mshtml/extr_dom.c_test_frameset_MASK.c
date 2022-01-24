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
typedef  int /*<<< orphan*/  IHTMLFramesCollection2 ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC15(IHTMLDocument2 *doc)
{
    IHTMLWindow2 *window;
    IHTMLFramesCollection2 *frames;
    IHTMLElement *elem;
    HRESULT hres;

    window = FUNC7(doc);

    /* test using IHTMLFramesCollection object */

    hres = FUNC5(window, &frames);
    FUNC8(hres == S_OK, "IHTMLWindow2_get_frames failed: 0x%08x\n", hres);
    if(FUNC0(hres))
        return;

    FUNC14(frames, "fr1");
    FUNC3(frames);

    hres = FUNC1(doc, &frames);
    FUNC8(hres == S_OK, "IHTMLDocument2_get_frames failed: 0x%08x\n", hres);
    if(FUNC0(hres))
        return;

    FUNC14(frames, "fr1");
    FUNC3(frames);

    /* test using IHTMLWindow2 inheritance */
    FUNC14((IHTMLFramesCollection2*)window, "fr2");

    /* getElementById with node name attributes */
    elem = FUNC6(doc, "nm1");
    FUNC9((IUnknown*)elem, "fr1");

    FUNC10((IUnknown*)elem);
    FUNC11(elem, "nm1");
    FUNC12(elem, "frame name");
    FUNC12(elem, NULL);
    FUNC12(elem, "nm1");
    FUNC13(elem, "about:blank");
    FUNC2(elem);

    /* get_name with no name attr */
    elem = FUNC6(doc, "fr3");
    FUNC11(elem, NULL);
    FUNC12(elem, "frame name");
    FUNC12(elem, NULL);
    FUNC2(elem);

    FUNC4(window);
}