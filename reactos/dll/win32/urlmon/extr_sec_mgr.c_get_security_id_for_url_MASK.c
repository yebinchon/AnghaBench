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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int E_INVALIDARG ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  URLZONE_INVALID ; 
 int /*<<< orphan*/  Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC6(LPCWSTR url, BYTE *secid, DWORD *secid_len)
{
    HRESULT hres;
    DWORD zone = URLZONE_INVALID;
    LPWSTR secur_url = NULL;
    IUri *uri;

    hres = FUNC5(url, &zone, &secur_url);
    if(FUNC2(hres))
        return hres == 0x80041001 ? E_INVALIDARG : hres;

    hres = FUNC1(secur_url, Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, 0, &uri);
    FUNC0(secur_url);
    if(FUNC2(hres))
        return hres;

    hres = FUNC4(uri, secid, secid_len, zone);
    FUNC3(uri);

    return hres;
}