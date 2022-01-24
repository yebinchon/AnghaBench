#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  request; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  Protocol ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IInternetBindInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HINTERNET ;
typedef  TYPE_2__ GopherProtocol ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ ERROR_IO_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  INET_E_RESOURCE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(Protocol *prot, IUri *uri, DWORD request_flags,
        HINTERNET internet_session, IInternetBindInfo *bind_info)
{
    GopherProtocol *This = FUNC6(prot);
    BSTR url;
    HRESULT hres;

    hres = FUNC2(uri, &url);
    if(FUNC0(hres))
        return hres;

    This->base.request = FUNC3(internet_session, url, NULL, 0,
            request_flags, (DWORD_PTR)&This->base);
    FUNC4(url);
    if (!This->base.request && FUNC1() != ERROR_IO_PENDING) {
        FUNC5("InternetOpenUrl failed: %d\n", FUNC1());
        return INET_E_RESOURCE_NOT_FOUND;
    }

    return S_OK;
}