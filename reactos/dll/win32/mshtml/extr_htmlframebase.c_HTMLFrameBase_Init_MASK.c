#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  dispex_static_data_t ;
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * nsiframe; int /*<<< orphan*/ * nsframe; int /*<<< orphan*/  element; TYPE_1__ IHTMLFrameBase2_iface; TYPE_2__ IHTMLFrameBase_iface; } ;
typedef  TYPE_3__ HTMLFrameBase ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HTMLFrameBase2Vtbl ; 
 int /*<<< orphan*/  HTMLFrameBaseVtbl ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLFrameElement ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLIFrameElement ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

void FUNC4(HTMLFrameBase *This, HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem,
        dispex_static_data_t *dispex_data)
{
    nsresult nsres;

    This->IHTMLFrameBase_iface.lpVtbl = &HTMLFrameBaseVtbl;
    This->IHTMLFrameBase2_iface.lpVtbl = &HTMLFrameBase2Vtbl;

    FUNC0(&This->element, doc, nselem, dispex_data);

    nsres = FUNC3(nselem, &IID_nsIDOMHTMLFrameElement, (void**)&This->nsframe);
    if(FUNC1(nsres)) {
        This->nsframe = NULL;
        nsres = FUNC3(nselem, &IID_nsIDOMHTMLIFrameElement, (void**)&This->nsiframe);
        FUNC2(nsres == NS_OK);
    }else {
        This->nsiframe = NULL;
    }
}