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
typedef  int /*<<< orphan*/  url ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ResProtocol ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  res_url_base ; 
 int res_url_base_len ; 

__attribute__((used)) static void FUNC8(const char *url_suffix)
{
    WCHAR url[INTERNET_MAX_URL_LENGTH];
    IInternetProtocol *protocol;
    ULONG size, ref;
    BYTE buf[100];
    HRESULT hres;

    FUNC5(url, res_url_base, res_url_base_len*sizeof(WCHAR));
    FUNC4(CP_ACP, 0, url_suffix, -1, url+res_url_base_len, sizeof(url)/sizeof(WCHAR)-res_url_base_len);

    hres = FUNC0(&CLSID_ResProtocol, NULL, CLSCTX_INPROC_SERVER, &IID_IInternetProtocol, (void**)&protocol);
    FUNC6(hres == S_OK, "Could not create ResProtocol instance: %08x\n", hres);

    FUNC7(protocol, url);

    hres = FUNC1(protocol, buf, sizeof(buf), &size);
    FUNC6(hres == S_OK, "Read failed: %08x\n", hres);

    hres = FUNC3(protocol, 0);
    FUNC6(hres == S_OK, "Terminate failed: %08x\n", hres);


    ref = FUNC2(protocol);
    FUNC6(!ref, "ref=%u\n", ref);
}