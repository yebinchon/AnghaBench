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
typedef  int /*<<< orphan*/  IUriContainer ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IID_IUriContainer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static IUri *FUNC6(IMoniker *mon)
{
    IUriContainer *uri_container;
    IUri *ret = NULL;
    HRESULT hres;

    hres = FUNC2(mon, &IID_IUriContainer, (void**)&uri_container);
    if(FUNC5(hres)) {
        hres = FUNC3(uri_container, &ret);
        FUNC4(uri_container);
        if(FUNC0(hres))
            return NULL;
    }else {
        FUNC1("No IUriContainer\n");
    }

    return ret;
}