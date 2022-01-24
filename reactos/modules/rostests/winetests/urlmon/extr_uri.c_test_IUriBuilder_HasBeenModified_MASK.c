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
typedef  char const* LPCWSTR ;
typedef  int /*<<< orphan*/  IUriBuilder ;
typedef  int /*<<< orphan*/  IUri ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*,char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  http_urlW ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (char const*) ; 

__attribute__((used)) static void FUNC13(void) {
    HRESULT hr;
    IUriBuilder *builder = NULL;

    hr = FUNC10(NULL, 0, 0, &builder);
    FUNC9(hr == S_OK, "Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
    if(FUNC6(hr)) {
        static const WCHAR hostW[] = {'g','o','o','g','l','e','.','c','o','m',0};
        IUri *uri = NULL;
        BOOL received;

        hr = FUNC1(builder, NULL);
        FUNC9(hr == E_POINTER, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
            hr, E_POINTER);

        hr = FUNC3(builder, hostW);
        FUNC9(hr == S_OK, "Error: IUriBuilder_SetHost returned 0x%08x, expected 0x%08x.\n",
            hr, S_OK);

        hr = FUNC1(builder, &received);
        FUNC9(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
            hr, S_OK);
        if(FUNC6(hr))
            FUNC9(received == TRUE, "Error: Expected received to be TRUE.\n");

        hr = FUNC11(http_urlW, 0, 0, &uri);
        FUNC9(hr == S_OK, "Error: CreateUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
        if(FUNC6(hr)) {
            LPCWSTR prop;
            DWORD len = -1;

            hr = FUNC4(builder, uri);
            FUNC9(hr == S_OK, "Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);

            hr = FUNC1(builder, &received);
            FUNC9(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);
            if(FUNC6(hr))
                FUNC9(received == FALSE, "Error: Expected received to be FALSE.\n");

            /* Test what happens with you call SetIUri with the same IUri again. */
            hr = FUNC3(builder, hostW);
            FUNC9(hr == S_OK, "Error: IUriBuilder_SetHost returned 0x%08x, expected 0x%08x.\n", hr, S_OK);

            hr = FUNC1(builder, &received);
            FUNC9(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);
            if(FUNC6(hr))
                FUNC9(received == TRUE, "Error: Expected received to be TRUE.\n");

            hr = FUNC4(builder, uri);
            FUNC9(hr == S_OK, "Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);

            /* IUriBuilder already had 'uri' as its IUri property and so Windows doesn't
             * reset any of the changes that were made to the IUriBuilder.
             */
            hr = FUNC1(builder, &received);
            FUNC9(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            if(FUNC6(hr))
                FUNC9(received == TRUE, "Error: Expected received to be TRUE.\n");

            hr = FUNC0(builder, &len, &prop);
            FUNC9(hr == S_OK, "Error: IUriBuilder_GetHost returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            if(FUNC6(hr)) {
                FUNC9(!FUNC7(prop, hostW), "Error: Expected %s but got %s instead.\n",
                    FUNC12(hostW), FUNC12(prop));
                FUNC9(len == FUNC8(hostW), "Error: Expected len to be %d, but was %d instead.\n",
                    FUNC8(hostW), len);
            }

            hr = FUNC4(builder, NULL);
            FUNC9(hr == S_OK, "Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);

            hr = FUNC3(builder, hostW);
            FUNC9(hr == S_OK, "Error: IUriBuilder_SetHost returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            hr = FUNC1(builder, &received);
            FUNC9(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);
            if(FUNC6(hr))
                FUNC9(received == TRUE, "Error: Expected received to be TRUE.\n");

            hr = FUNC4(builder, NULL);
            FUNC9(hr == S_OK, "Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%09x.\n", hr, S_OK);

            hr = FUNC1(builder, &received);
            FUNC9(hr == S_OK, "Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\n",
                hr, S_OK);
            if(FUNC6(hr))
                FUNC9(received == TRUE, "Error: Expected received to be TRUE.\n");

            hr = FUNC0(builder, &len, &prop);
            FUNC9(hr == S_OK, "Error: IUriBuilder_GetHost returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            if(FUNC6(hr)) {
                FUNC9(!FUNC7(prop, hostW), "Error: Expected %s but got %s instead.\n",
                    FUNC12(hostW), FUNC12(prop));
                FUNC9(len == FUNC8(hostW), "Error: Expected len to %d, but was %d instead.\n",
                    FUNC8(hostW), len);
            }
        }
        if(uri) FUNC5(uri);
    }
    if(builder) FUNC2(builder);
}