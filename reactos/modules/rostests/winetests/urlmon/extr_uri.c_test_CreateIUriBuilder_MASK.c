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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IUriBuilder ;
typedef  int /*<<< orphan*/  IUri ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_urlW ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC7(void) {
    HRESULT hr;
    IUriBuilder *builder = NULL;
    IUri *uri;

    hr = FUNC5(NULL, 0, 0, NULL);
    FUNC4(hr == E_POINTER, "Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x\n",
        hr, E_POINTER);

    /* CreateIUriBuilder increases the ref count of the IUri it receives. */
    hr = FUNC6(http_urlW, 0, 0, &uri);
    FUNC4(hr == S_OK, "Error: CreateUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
    if(FUNC2(hr)) {
        ULONG cur_count, orig_count;

        orig_count = FUNC3(uri);
        hr = FUNC5(uri, 0, 0, &builder);
        FUNC4(hr == S_OK, "Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
        FUNC4(builder != NULL, "Error: Expecting builder not to be NULL\n");

        cur_count = FUNC3(uri);
        FUNC4(cur_count == orig_count+1, "Error: Expected the ref count to be %u, but was %u instead.\n", orig_count+1, cur_count);

        if(builder) FUNC0(builder);
        cur_count = FUNC3(uri);
        FUNC4(cur_count == orig_count, "Error: Expected the ref count to be %u, but was %u instead.\n", orig_count, cur_count);
    }
    if(uri) FUNC1(uri);
}