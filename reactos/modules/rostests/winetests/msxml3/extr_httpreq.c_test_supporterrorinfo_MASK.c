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
typedef  int /*<<< orphan*/  IXMLHttpRequest ;
typedef  int /*<<< orphan*/  ISupportErrorInfo ;
typedef  int /*<<< orphan*/  IServerXMLHTTPRequest ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IID_ISupportErrorInfo ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    HRESULT hr;
    IXMLHttpRequest *xhr;
    IServerXMLHTTPRequest *server_xhr;
    ISupportErrorInfo *errorinfo, *errorinfo2;

    xhr = FUNC7();

    FUNC0(xhr, 1);
    hr = FUNC4(xhr, &IID_ISupportErrorInfo, (void **)&errorinfo);
    FUNC8(hr == S_OK, "Failed to get ISupportErrorInfo, hr %#x.\n", hr);
    FUNC0(xhr, 2);

    hr = FUNC4(xhr, &IID_ISupportErrorInfo, (void **)&errorinfo2);
    FUNC8(hr == S_OK, "Failed to get ISupportErrorInfo, hr %#x.\n", hr);
    FUNC8(errorinfo == errorinfo2, "Unexpected error info instance.\n");
    FUNC0(xhr, 3);

    FUNC3(errorinfo2);
    FUNC3(errorinfo);

    FUNC5(xhr);

    /* ServerXMLHTTP */
    server_xhr = FUNC6();

    FUNC0(server_xhr, 1);
    hr = FUNC1(server_xhr, &IID_ISupportErrorInfo, (void **)&errorinfo);
    FUNC8(hr == S_OK, "Failed to get ISupportErrorInfo, hr %#x.\n", hr);
    FUNC0(server_xhr, 2);

    hr = FUNC1(server_xhr, &IID_ISupportErrorInfo, (void **)&errorinfo2);
    FUNC8(hr == S_OK, "Failed to get ISupportErrorInfo, hr %#x.\n", hr);
    FUNC8(errorinfo == errorinfo2, "Unexpected error info instance.\n");
    FUNC0(server_xhr, 3);

    FUNC3(errorinfo2);
    FUNC3(errorinfo);

    FUNC2(server_xhr);
}