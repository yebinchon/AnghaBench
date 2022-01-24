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
typedef  int /*<<< orphan*/  zerotestW ;
typedef  int /*<<< orphan*/  testW ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  DXDIAG_E_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int,...) ; 
 int /*<<< orphan*/  pddc ; 
 int /*<<< orphan*/  pddp ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    HRESULT hr;
    WCHAR container[256];
    DWORD maxcount, index;
    static const WCHAR testW[] = {'t','e','s','t',0};
    static const WCHAR zerotestW[] = {0,'e','s','t',0};

    if (!FUNC6())
    {
        FUNC10("Unable to create the root IDxDiagContainer\n");
        return;
    }

    /* Test various combinations of invalid parameters. */
    hr = FUNC2(pddc, 0, NULL, 0);
    FUNC9(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::EnumChildContainerNames to return E_INVALIDARG, got 0x%08x\n", hr);

    hr = FUNC2(pddc, 0, NULL, FUNC0(container));
    FUNC9(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::EnumChildContainerNames to return E_INVALIDARG, got 0x%08x\n", hr);

    /* Test the conditions in which the output buffer can be modified. */
    FUNC8(container, testW, sizeof(testW));
    hr = FUNC2(pddc, 0, container, 0);
    FUNC9(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::EnumChildContainerNames to return E_INVALIDARG, got 0x%08x\n", hr);
    FUNC9(!FUNC7(container, testW, sizeof(testW)),
       "Expected the container buffer to be untouched, got %s\n", FUNC12(container));

    FUNC8(container, testW, sizeof(testW));
    hr = FUNC2(pddc, ~0, container, 0);
    FUNC9(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::EnumChildContainerNames to return E_INVALIDARG, got 0x%08x\n", hr);
    FUNC9(!FUNC7(container, testW, sizeof(testW)),
       "Expected the container buffer to be untouched, got %s\n", FUNC12(container));

    FUNC8(container, testW, sizeof(testW));
    hr = FUNC2(pddc, ~0, container, FUNC0(container));
    FUNC9(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::EnumChildContainerNames to return E_INVALIDARG, got 0x%08x\n", hr);
    FUNC9(!FUNC7(container, zerotestW, sizeof(zerotestW)),
       "Expected the container buffer string to be empty, got %s\n", FUNC12(container));

    hr = FUNC3(pddc, &maxcount);
    FUNC9(hr == S_OK, "Expected IDxDiagContainer::GetNumberOfChildContainers to return S_OK, got 0x%08x\n", hr);
    if (FUNC1(hr))
    {
        FUNC10("IDxDiagContainer::GetNumberOfChildContainers failed\n");
        goto cleanup;
    }

    FUNC11("Starting child container enumeration of the root container:\n");

    /* We should be able to enumerate as many child containers as the value
     * that IDxDiagContainer::GetNumberOfChildContainers returns. */
    for (index = 0; index <= maxcount; index++)
    {
        /* A buffer size of 1 is unlikely to be valid, as only a null terminator
         * could be stored, and it is unlikely that a container name could be empty. */
        DWORD buffersize = 1;
        FUNC8(container, testW, sizeof(testW));
        hr = FUNC2(pddc, index, container, buffersize);
        if (hr == E_INVALIDARG)
        {
            /* We should get here when index is one more than the maximum index value. */
            FUNC9(maxcount == index,
               "Expected IDxDiagContainer::EnumChildContainerNames to return E_INVALIDARG "
               "on the last index %d, got 0x%08x\n", index, hr);
            FUNC9(container[0] == '\0',
               "Expected the container buffer string to be empty, got %s\n", FUNC12(container));
            break;
        }
        else if (hr == DXDIAG_E_INSUFFICIENT_BUFFER)
        {
            WCHAR temp[256];

            FUNC9(container[0] == '\0',
               "Expected the container buffer string to be empty, got %s\n", FUNC12(container));

            /* Get the container name to compare against. */
            hr = FUNC2(pddc, index, temp, FUNC0(temp));
            FUNC9(hr == S_OK,
               "Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, got 0x%08x\n", hr);

            /* Show that the DirectX SDK's stipulation that the buffer be at
             * least 256 characters long is a mere suggestion, and smaller sizes
             * can be acceptable also. IDxDiagContainer::EnumChildContainerNames
             * doesn't provide a way of getting the exact size required, so the
             * buffersize value will be iterated to at most 256 characters. */
            for (buffersize = 2; buffersize <= 256; buffersize++)
            {
                FUNC8(container, testW, sizeof(testW));
                hr = FUNC2(pddc, index, container, buffersize);
                if (hr != DXDIAG_E_INSUFFICIENT_BUFFER)
                    break;

                FUNC9(!FUNC7(temp, container, sizeof(WCHAR)*(buffersize - 1)),
                   "Expected truncated container name string, got %s\n", FUNC12(container));
            }

            FUNC9(hr == S_OK,
               "Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, "
               "got hr = 0x%08x, buffersize = %d\n", hr, buffersize);
            if (hr == S_OK)
                FUNC11("pddc[%d] = %s, length = %d\n", index, FUNC12(container), buffersize);
        }
        else
        {
            FUNC9(0, "IDxDiagContainer::EnumChildContainerNames unexpectedly returned 0x%08x\n", hr);
            break;
        }
    }

cleanup:
    FUNC4(pddc);
    FUNC5(pddp);
}