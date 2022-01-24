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
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PSU_SECURITY_URL_ONLY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(IUri *uri, DWORD *zone, IUri **ret_uri)
{
    HRESULT hres;
    IUri *secur_uri;

    hres = FUNC0(uri, &secur_uri, PSU_SECURITY_URL_ONLY, 0);
    if(FUNC1(hres))
        return hres;

    hres = FUNC3(secur_uri, zone);
    if(FUNC1(hres) || !ret_uri)
        FUNC2(secur_uri);
    else
        *ret_uri = secur_uri;

    return hres;
}