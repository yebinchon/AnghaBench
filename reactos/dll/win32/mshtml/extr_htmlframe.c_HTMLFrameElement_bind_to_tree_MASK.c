#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMDocument ;
struct TYPE_5__ {int /*<<< orphan*/  nsframe; } ;
struct TYPE_4__ {TYPE_2__ framebase; } ;
typedef  TYPE_1__ HTMLFrameElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(HTMLDOMNode *iface)
{
    HTMLFrameElement *This = FUNC2(iface);
    nsIDOMDocument *nsdoc;
    nsresult nsres;
    HRESULT hres;

    nsres = FUNC4(This->framebase.nsframe, &nsdoc);
    if(FUNC1(nsres) || !nsdoc) {
        FUNC0("GetContentDocument failed: %08x\n", nsres);
        return E_FAIL;
    }

    hres = FUNC5(&This->framebase, nsdoc);
    FUNC3(nsdoc);
    return hres;
}