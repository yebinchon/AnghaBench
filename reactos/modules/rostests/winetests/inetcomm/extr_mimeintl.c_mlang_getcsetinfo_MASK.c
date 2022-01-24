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
typedef  int /*<<< orphan*/  MIMECSETINFO ;
typedef  int /*<<< orphan*/  IMultiLanguage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MIME_E_NOT_FOUND ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC8(const char *charset, MIMECSETINFO *mlang_info)
{
    DWORD len = FUNC3(CP_ACP, 0, charset, -1, NULL, 0);
    BSTR bstr = FUNC5(NULL, len - 1);
    HRESULT hr;
    IMultiLanguage *ml;

    FUNC3(CP_ACP, 0, charset, -1, bstr, len);

    hr = FUNC7(&ml);

    if(FUNC4(hr))
    {
        hr = FUNC1(ml, bstr, mlang_info);
        FUNC2(ml);
    }
    FUNC6(bstr);
    if(FUNC0(hr)) hr = MIME_E_NOT_FOUND;
    return hr;
}