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
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ PRUnichar ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__ const**) ; 

HRESULT FUNC7(nsresult nsres, nsAString *nsstr, BSTR *p)
{
    const PRUnichar *str;

    if(FUNC1(nsres)) {
        FUNC0("failed: %08x\n", nsres);
        FUNC5(nsstr);
        return E_FAIL;
    }

    FUNC6(nsstr, &str);
    FUNC3("ret %s\n", FUNC4(str));
    if(*str) {
        *p = FUNC2(str);
        if(!*p)
            return E_OUTOFMEMORY;
    }else {
        *p = NULL;
    }

    FUNC5(nsstr);
    return S_OK;
}