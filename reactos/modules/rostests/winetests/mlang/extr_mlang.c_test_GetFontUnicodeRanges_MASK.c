#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lf ;
typedef  int /*<<< orphan*/  UNICODERANGE ;
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  lfFaceName; } ;
typedef  TYPE_1__ LOGFONTA ;
typedef  int /*<<< orphan*/  IMLangFontLink2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 

__attribute__((used)) static void FUNC12(IMLangFontLink2 *font_link)
{
    HRESULT hr;
    UINT count;
    HFONT hfont, old_hfont;
    LOGFONTA lf;
    HDC hdc;
    UNICODERANGE *ur;

    hdc = FUNC0(0);
    FUNC10(&lf, 0, sizeof(lf));
    FUNC9(lf.lfFaceName, "Arial");
    hfont = FUNC1(&lf);
    old_hfont = FUNC8(hdc, hfont);

    count = 0;
    hr = FUNC7(font_link, NULL, &count, NULL);
    FUNC11(hr == E_FAIL, "expected E_FAIL, got 0x%08x\n", hr);

    hr = FUNC7(font_link, hdc, NULL, NULL);
    FUNC11(hr == E_INVALIDARG, "expected E_FAIL, got 0x%08x\n", hr);

    count = 0;
    hr = FUNC7(font_link, hdc, &count, NULL);
    FUNC11(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
    FUNC11(count, "expected count > 0\n");

    ur = FUNC5(FUNC4(), 0, sizeof(*ur) * count);

    hr = FUNC7(font_link, hdc, &count, ur);
    FUNC11(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);

    count--;
    hr = FUNC7(font_link, hdc, &count, ur);
    FUNC11(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);

    FUNC6(FUNC4(), 0, ur);

    FUNC8(hdc, old_hfont);
    FUNC3(hfont);
    FUNC2(hdc);
}