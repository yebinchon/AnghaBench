#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  nselem; } ;
typedef  scalar_t__ PRUnichar ;
typedef  TYPE_1__ HTMLElement ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ *,scalar_t__ const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

HRESULT FUNC6(HTMLElement *elem, const WCHAR *name, BOOL use_null, BSTR *p)
{
    const PRUnichar *val;
    nsAString val_str;
    nsresult nsres;
    HRESULT hres = S_OK;

    nsres = FUNC4(elem->nselem, name, &val_str, &val);
    if(FUNC0(nsres))
        return E_FAIL;

    FUNC2("%s: returning %s\n", FUNC3(name), FUNC3(val));

    if(*val || !use_null) {
        *p = FUNC1(val);
        if(!*p)
            hres = E_OUTOFMEMORY;
    }else {
        *p = NULL;
    }
    FUNC5(&val_str);
    return hres;
}