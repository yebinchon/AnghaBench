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
typedef  int /*<<< orphan*/  IUriBuilder ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  http_urlW ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC7(void) {
    HRESULT hr;
    IUri *uri;

    hr = FUNC6(http_urlW, 0, 0, &uri);
    if(FUNC3(hr)) {
        IUriBuilder *builder;

        hr = FUNC5(uri, 0, 0, &builder);
        FUNC4(hr == S_OK, "Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
        if(FUNC3(hr)) {
            BOOL has = -1;
            DWORD port = -1;

            hr = FUNC0(builder, &has, &port);
            FUNC4(hr == S_OK, "Error: IUriBuilder_GetPort returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            if(FUNC3(hr)) {
                /* 'has' will be set to FALSE, even though uri had a port. */
                FUNC4(has == FALSE, "Error: Expected 'has' to be FALSE, was %d instead.\n", has);
                /* Still sets 'port' to 80. */
                FUNC4(port == 80, "Error: Expected the port to be 80, but, was %d instead.\n", port);
            }
        }
        if(builder) FUNC1(builder);
    }
    if(uri) FUNC2(uri);
}