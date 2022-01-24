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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsACString ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static HRESULT FUNC6(nsresult nsres, nsACString *nscstr, BSTR *p)
{
    const char *str;
    int len;

    if(FUNC2(nsres)) {
        FUNC0("failed: %08x\n", nsres);
        FUNC4(nscstr);
        return E_FAIL;
    }

    FUNC5(nscstr, &str);

    if(*str) {
        len = FUNC1(CP_UTF8, 0, str, -1, NULL, 0);
        *p = FUNC3(NULL, len);
        if(!*p) {
            FUNC4(nscstr);
            return E_OUTOFMEMORY;
        }
        FUNC1(CP_UTF8, 0, str, -1, *p, len);
    }else {
        *p = NULL;
    }

    FUNC4(nscstr);
    return S_OK;
}