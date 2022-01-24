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
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int URL_DONT_ESCAPE_EXTRA_INFO ; 
 int URL_ESCAPE_SPACES_ONLY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

HRESULT FUNC7(HTMLOuterWindow *window, const WCHAR *new_url, IUri *base_uri, DWORD flags)
{
    IUri *uri, *nav_uri;
    BSTR display_uri;
    HRESULT hres;

    if(new_url && base_uri)
        hres = FUNC0(base_uri, new_url, URL_ESCAPE_SPACES_ONLY|URL_DONT_ESCAPE_EXTRA_INFO,
                &nav_uri, 0);
    else
        hres = FUNC4(new_url, 0, &nav_uri);
    if(FUNC1(hres))
        return hres;

    hres = FUNC6(window, nav_uri, &display_uri, &uri);
    FUNC2(nav_uri);
    if(FUNC1(hres))
        return hres;

    hres = FUNC5(window, uri, display_uri, NULL, flags);
    FUNC2(uri);
    FUNC3(display_uri);
    return hres;
}