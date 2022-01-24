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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOCSTR_EXECUTABLE ; 
 int /*<<< orphan*/  ASSOCSTR_FRIENDLYAPPNAME ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  dotHtml ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  open ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRESULT hr;
    WCHAR * friendlyName;
    WCHAR * executableName;
    DWORD len, len2, slen;

    if (!&pAssocQueryStringW)
    {
        FUNC10("AssocQueryStringW() is missing\n");
        return;
    }

    hr = FUNC8(0, ASSOCSTR_EXECUTABLE, dotHtml, open, NULL, &len);
    FUNC5(S_FALSE, hr);
    if (hr != S_FALSE)
    {
        FUNC9("failed to get initial len\n");
        return;
    }

    executableName = FUNC2(FUNC0(), HEAP_ZERO_MEMORY,
                               len * sizeof(WCHAR));
    if (!executableName)
    {
        FUNC9("failed to allocate memory\n");
        return;
    }

    len2 = len;
    hr = FUNC8(0, ASSOCSTR_EXECUTABLE, dotHtml, open,
                           executableName, &len2);
    FUNC5(S_OK, hr);
    slen = FUNC6(executableName) + 1;
    FUNC4(len, len2);
    FUNC4(len, slen);

    hr = FUNC8(0, ASSOCSTR_FRIENDLYAPPNAME, dotHtml, open, NULL,
                           &len);
    FUNC7(hr == S_FALSE ||
       hr == FUNC1(ERROR_FILE_NOT_FOUND) /* Win9x/NT4 */ ||
       hr == FUNC1(ERROR_NOT_FOUND), /* Win8 */
       "Unexpected result : %08x\n", hr);
    if (hr != S_FALSE)
    {
        FUNC3(FUNC0(), 0, executableName);
        FUNC9("failed to get initial len\n");
        return;
    }

    friendlyName = FUNC2(FUNC0(), HEAP_ZERO_MEMORY,
                               len * sizeof(WCHAR));
    if (!friendlyName)
    {
        FUNC3(FUNC0(), 0, executableName);
        FUNC9("failed to allocate memory\n");
        return;
    }

    len2 = len;
    hr = FUNC8(0, ASSOCSTR_FRIENDLYAPPNAME, dotHtml, open,
                           friendlyName, &len2);
    FUNC5(S_OK, hr);
    slen = FUNC6(friendlyName) + 1;
    FUNC4(len, len2);
    FUNC4(len, slen);

    FUNC3(FUNC0(), 0, executableName);
    FUNC3(FUNC0(), 0, friendlyName);
}