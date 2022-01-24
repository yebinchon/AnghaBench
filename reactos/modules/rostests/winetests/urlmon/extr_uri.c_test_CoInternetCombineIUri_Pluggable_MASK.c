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
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CombineUrl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int URL_DONT_SIMPLIFY ; 
 int URL_DONT_UNESCAPE_EXTRA_INFO ; 
 int URL_FILE_USE_PATHURL ; 
 int /*<<< orphan*/  Uri_CREATE_ALLOW_RELATIVE ; 
 int /*<<< orphan*/  combine_baseW ; 
 int /*<<< orphan*/  combine_relativeW ; 
 int /*<<< orphan*/ * combine_resultW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void) {
    HRESULT hr;
    IUri *base = NULL;

    hr = FUNC9(combine_baseW, 0, 0, &base);
    FUNC7(FUNC4(hr), "Error: CreateUri returned 0x%08x.\n", hr);
    if(FUNC4(hr)) {
        IUri *relative = NULL;

        hr = FUNC9(combine_relativeW, Uri_CREATE_ALLOW_RELATIVE, 0, &relative);
        FUNC7(FUNC4(hr), "Error: CreateUri returned 0x%08x.\n", hr);
        if(FUNC4(hr)) {
            IUri *result = NULL;

            FUNC3(CombineUrl);

            hr = FUNC8(base, relative, URL_DONT_SIMPLIFY|URL_FILE_USE_PATHURL|URL_DONT_UNESCAPE_EXTRA_INFO,
                                        &result, 0);
            FUNC7(hr == S_OK, "Error: CoInternetCombineIUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);

            FUNC0(CombineUrl);

            if(FUNC4(hr)) {
                BSTR received = NULL;
                hr = FUNC1(result, &received);
                FUNC7(hr == S_OK, "Error: Expected S_OK, but got 0x%08x instead.\n", hr);
                if(FUNC4(hr)) {
                    FUNC7(!FUNC6(combine_resultW, received), "Error: Expected %s, but got %s.\n",
                        FUNC10(combine_resultW), FUNC10(received));
                }
                FUNC5(received);
            }
            if(result) FUNC2(result);
        }
        if(relative) FUNC2(relative);
    }
    if(base) FUNC2(base);
}