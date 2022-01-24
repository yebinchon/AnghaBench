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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IUri ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PSU_SECURITY_URL_ONLY ; 
 scalar_t__ S_OK ; 
 int URLZONE_INVALID ; 
 int /*<<< orphan*/  Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(LPCWSTR url, DWORD *zone, LPWSTR *ret_url)
{
    IUri *secur_uri;
    LPWSTR secur_url;
    HRESULT hres;

    *zone = URLZONE_INVALID;

    hres = FUNC0(url, &secur_url, PSU_SECURITY_URL_ONLY, 0);
    if(hres != S_OK) {
        DWORD size = FUNC8(url)*sizeof(WCHAR);

        secur_url = FUNC1(size);
        if(!secur_url)
            return E_OUTOFMEMORY;

        FUNC7(secur_url, url, size);
    }

    hres = FUNC3(secur_url, Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, 0, &secur_uri);
    if(FUNC4(hres)) {
        FUNC2(secur_url);
        return hres;
    }

    hres = FUNC6(secur_uri, zone);
    FUNC5(secur_uri);

    if(FUNC4(hres) || !ret_url)
        FUNC2(secur_url);
    else
        *ret_url = secur_url;

    return hres;
}