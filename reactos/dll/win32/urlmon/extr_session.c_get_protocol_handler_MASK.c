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
struct TYPE_3__ {int /*<<< orphan*/  clsid; int /*<<< orphan*/ * cf; } ;
typedef  TYPE_1__ name_space ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  session_cs ; 

HRESULT FUNC9(IUri *uri, CLSID *clsid, IClassFactory **ret)
{
    name_space *ns;
    BSTR scheme;
    HRESULT hres;

    *ret = NULL;

    /* FIXME: Avoid GetSchemeName call for known schemes */
    hres = FUNC3(uri, &scheme);
    if(FUNC1(hres))
        return hres;

    FUNC0(&session_cs);

    ns = FUNC7(scheme);
    if(ns) {
        *ret = ns->cf;
        FUNC2(*ret);
        if(clsid)
            *clsid = ns->clsid;
    }

    FUNC4(&session_cs);

    hres = *ret ? S_OK : FUNC8(scheme, FUNC6(scheme), clsid, ret);
    FUNC5(scheme);
    return hres;
}