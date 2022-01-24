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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static HRESULT FUNC7(HKEY domains, LPCWSTR schema, LPCWSTR host, DWORD host_len, DWORD *zone)
{
    WCHAR *domain;
    DWORD domain_count, domain_len, i;
    DWORD res;
    HRESULT hres = S_FALSE;

    res = FUNC2(domains, NULL, NULL, NULL, &domain_count, &domain_len,
                           NULL, NULL, NULL, NULL, NULL, NULL);
    if(res != ERROR_SUCCESS) {
        FUNC3("Failed to retrieve information about key\n");
        return E_UNEXPECTED;
    }

    if(!domain_count)
        return S_FALSE;

    domain = FUNC4((domain_len+1)*sizeof(WCHAR));
    if(!domain)
        return E_OUTOFMEMORY;

    for(i = 0; i < domain_count; ++i) {
        DWORD len = domain_len+1;

        res = FUNC1(domains, i, domain, &len, NULL, NULL, NULL, NULL);
        if(res != ERROR_SUCCESS) {
            FUNC5(domain);
            return E_UNEXPECTED;
        }

        hres = FUNC6(domains, domain, len, schema, host, host_len, zone);
        if(FUNC0(hres) || hres == S_OK)
            break;
    }

    FUNC5(domain);
    return hres;
}