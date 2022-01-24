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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int URL_DONT_ESCAPE_EXTRA_INFO ; 
 int URL_ESCAPE_SPACES_ONLY ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(IUri *base_uri, const WCHAR *rel_url, IUri **ret)
{
    IUri *uri_nofrag;
    HRESULT hres;

    uri_nofrag = FUNC4(base_uri);
    if(!uri_nofrag)
        return E_FAIL;

    hres = FUNC0(uri_nofrag, rel_url, URL_ESCAPE_SPACES_ONLY|URL_DONT_ESCAPE_EXTRA_INFO,
                ret, 0);
    FUNC2(uri_nofrag);
    if(FUNC1(hres))
        FUNC3("CoInternetCombineUrlEx failed: %08x\n", hres);
    return hres;
}