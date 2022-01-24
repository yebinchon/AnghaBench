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
typedef  char WCHAR ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  ASSOCSTR_EXECUTABLE ; 
 int /*<<< orphan*/  ASSOCSTR_FRIENDLYAPPNAME ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_NO_ASSOCIATION ; 
 int E_FAIL ; 
 int E_INVALIDARG ; 
 int E_UNEXPECTED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/ * badBad ; 
 int /*<<< orphan*/ * dotBad ; 
 int /*<<< orphan*/ * dotHtml ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  invalid ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  open ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    static const WCHAR openwith[] = {'O','p','e','n','W','i','t','h','.','e','x','e',0};
    WCHAR buf[MAX_PATH];
    HRESULT hr;
    DWORD len;

    if (!&pAssocQueryStringW)
    {
        FUNC6("AssocQueryStringW() is missing\n");
        return;
    }

    len = 0xdeadbeef;
    hr = FUNC5(0, ASSOCSTR_EXECUTABLE, NULL, open, NULL, &len);
    FUNC2(E_INVALIDARG, hr);
    FUNC4(len == 0xdeadbeef, "got %u\n", len);

    len = 0xdeadbeef;
    hr = FUNC5(0, ASSOCSTR_EXECUTABLE, badBad, open, NULL, &len);
    FUNC4(hr == E_FAIL ||
       hr == FUNC1(ERROR_NO_ASSOCIATION), /* Win9x/WinMe/NT4/W2K/Vista/W2K8 */
       "Unexpected result : %08x\n", hr);
    FUNC4(len == 0xdeadbeef, "got %u\n", len);

    len = FUNC0(buf);
    hr = FUNC5(0, ASSOCSTR_EXECUTABLE, dotBad, open, buf, &len);
    FUNC4(hr == E_FAIL ||
       hr == FUNC1(ERROR_NO_ASSOCIATION) /* Win9x/WinMe/NT4/W2K/Vista/W2K8 */ ||
       hr == S_OK /* Win8 */,
       "Unexpected result : %08x\n", hr);
    if (hr == S_OK)
    {
        FUNC4(len < FUNC0(buf), "got %u\n", len);
        FUNC4(!FUNC3(buf + len - FUNC0(openwith), openwith), "wrong data\n");
    }

    len = 0xdeadbeef;
    hr = FUNC5(0, ASSOCSTR_EXECUTABLE, dotHtml, invalid, NULL, &len);
    FUNC4(hr == FUNC1(ERROR_FILE_NOT_FOUND) ||
       hr == FUNC1(ERROR_NO_ASSOCIATION), /* Win9x/WinMe/NT4/W2K/Vista/W2K8 */
       "Unexpected result : %08x\n", hr);
    FUNC4(len == 0xdeadbeef, "got %u\n", len);

    hr = FUNC5(0, ASSOCSTR_EXECUTABLE, dotHtml, open, NULL, NULL);
    FUNC4(hr == E_UNEXPECTED ||
       hr == E_INVALIDARG, /* Win9x/WinMe/NT4/W2K/Vista/W2K8 */
       "Unexpected result : %08x\n", hr);

    len = 0xdeadbeef;
    hr = FUNC5(0, ASSOCSTR_FRIENDLYAPPNAME, NULL, open, NULL, &len);
    FUNC2(E_INVALIDARG, hr);
    FUNC4(len == 0xdeadbeef, "got %u\n", len);

    len = 0xdeadbeef;
    hr = FUNC5(0, ASSOCSTR_FRIENDLYAPPNAME, badBad, open, NULL, &len);
    FUNC4(hr == E_FAIL ||
       hr == FUNC1(ERROR_NO_ASSOCIATION), /* Win9x/WinMe/NT4/W2K/Vista/W2K8 */
       "Unexpected result : %08x\n", hr);
    FUNC4(len == 0xdeadbeef, "got %u\n", len);

    len = 0xdeadbeef;
    hr = FUNC5(0, ASSOCSTR_FRIENDLYAPPNAME, dotBad, open, NULL, &len);
    FUNC4(hr == E_FAIL ||
       hr == FUNC1(ERROR_NO_ASSOCIATION) /* Win9x/WinMe/NT4/W2K/Vista/W2K8 */ ||
       hr == FUNC1(ERROR_NOT_FOUND) /* Win8 */ ||
       hr == S_FALSE, /* Win10 */
       "Unexpected result : %08x\n", hr);
    FUNC4((hr == S_FALSE && len < FUNC0(buf)) || len == 0xdeadbeef,
       "got hr=%08x and len=%u\n", hr, len);

    len = 0xdeadbeef;
    hr = FUNC5(0, ASSOCSTR_FRIENDLYAPPNAME, dotHtml, invalid, NULL, &len);
    FUNC4(hr == FUNC1(ERROR_FILE_NOT_FOUND) ||
       hr == FUNC1(ERROR_NO_ASSOCIATION) || /* W2K/Vista/W2K8 */
       hr == E_FAIL, /* Win9x/WinMe/NT4 */
       "Unexpected result : %08x\n", hr);
    FUNC4(len == 0xdeadbeef, "got %u\n", len);

    hr = FUNC5(0, ASSOCSTR_FRIENDLYAPPNAME, dotHtml, open, NULL, NULL);
    FUNC4(hr == E_UNEXPECTED ||
       hr == E_INVALIDARG, /* Win9x/WinMe/NT4/W2K/Vista/W2K8 */
       "Unexpected result : %08x\n", hr);
}