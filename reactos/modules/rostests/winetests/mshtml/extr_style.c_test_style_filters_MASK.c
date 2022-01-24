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
typedef  int /*<<< orphan*/  IHTMLStyle ;
typedef  int /*<<< orphan*/  IHTMLElement2 ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLCurrentStyle2 ;
typedef  int /*<<< orphan*/  IHTMLCurrentStyle ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(IHTMLElement *elem)
{
    IHTMLElement2 *elem2 = FUNC6((IUnknown*)elem);
    IHTMLCurrentStyle2 *current_style2;
    IHTMLCurrentStyle *current_style;
    IHTMLStyle *style;
    HRESULT hres;

    hres = FUNC3(elem, &style);
    FUNC7(hres == S_OK, "get_style failed: %08x\n", hres);

    hres = FUNC2(elem2, &current_style);
    FUNC7(hres == S_OK, "get_style failed: %08x\n", hres);

    current_style2 = FUNC5((IUnknown*)current_style);

    FUNC10(style, NULL);
    FUNC9(current_style2, NULL);
    FUNC8(style, "alpha(opacity=50.0040)");
    FUNC9(current_style2, "alpha(opacity=50.0040)");
    FUNC8(style, "alpha(opacity=100)");

    FUNC4(style);

    hres = FUNC3(elem, &style);
    FUNC7(hres == S_OK, "get_style failed: %08x\n", hres);

    FUNC10(style, "alpha(opacity=100)");
    FUNC8(style, "xxx(a,b,c) alpha(opacity=100)");
    FUNC8(style, NULL);
    FUNC8(style, "alpha(opacity=100)");
    FUNC11(style, "filter", VARIANT_TRUE);
    FUNC11(style, "filter", VARIANT_FALSE);
    FUNC10(style, NULL);


    FUNC0(current_style2);
    FUNC4(style);
    FUNC1(elem2);
}