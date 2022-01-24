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
typedef  int /*<<< orphan*/  URL_COMPONENTSW ;
typedef  int /*<<< orphan*/  HTMLLocation ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC6(HTMLLocation *This, URL_COMPONENTSW *url)
{
    const WCHAR *doc_url;
    HRESULT hres;

    hres = FUNC5(This, &doc_url);
    if(FUNC0(hres))
        return hres;

    if(!FUNC3(doc_url, 0, 0, url)) {
        FUNC1("InternetCrackUrlW failed: 0x%08x\n", FUNC2());
        FUNC4(0);
        return E_FAIL;
    }

    return S_OK;
}