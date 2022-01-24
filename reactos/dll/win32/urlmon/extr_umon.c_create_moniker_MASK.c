#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int ref; int /*<<< orphan*/ * uri; int /*<<< orphan*/ * URLName; TYPE_1__ IUriContainer_iface; TYPE_2__ IMoniker_iface; } ;
typedef  TYPE_3__ URLMoniker ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  URLMonikerVtbl ; 
 int /*<<< orphan*/  UriContainerVtbl ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static HRESULT FUNC6(IUri *uri, URLMoniker **ret)
{
    URLMoniker *mon;
    HRESULT hres;

    mon = FUNC4(sizeof(*mon));
    if(!mon)
        return E_OUTOFMEMORY;

    mon->IMoniker_iface.lpVtbl = &URLMonikerVtbl;
    mon->IUriContainer_iface.lpVtbl = &UriContainerVtbl;
    mon->ref = 1;

    if(uri) {
        /* FIXME: try to avoid it */
        hres = FUNC2(uri, &mon->URLName);
        if(FUNC0(hres)) {
            FUNC5(mon);
            return hres;
        }

        FUNC1(uri);
        mon->uri = uri;
    }else {
        mon->URLName = NULL;
        mon->uri = NULL;
    }

    FUNC3();
    *ret = mon;
    return S_OK;
}