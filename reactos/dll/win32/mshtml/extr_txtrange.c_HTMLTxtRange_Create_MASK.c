#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMRange ;
struct TYPE_11__ {int /*<<< orphan*/  range_list; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int ref; TYPE_2__ IHTMLTxtRange_iface; int /*<<< orphan*/  entry; TYPE_4__* doc; int /*<<< orphan*/ * nsrange; TYPE_1__ IOleCommandTarget_iface; int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ IHTMLTxtRange ;
typedef  TYPE_3__ HTMLTxtRange ;
typedef  TYPE_4__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  HTMLTxtRangeVtbl ; 
 int /*<<< orphan*/  HTMLTxtRange_dispex ; 
 int /*<<< orphan*/  OleCommandTargetVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

HRESULT FUNC4(HTMLDocumentNode *doc, nsIDOMRange *nsrange, IHTMLTxtRange **p)
{
    HTMLTxtRange *ret;

    ret = FUNC0(sizeof(HTMLTxtRange));
    if(!ret)
        return E_OUTOFMEMORY;

    FUNC1(&ret->dispex, (IUnknown*)&ret->IHTMLTxtRange_iface, &HTMLTxtRange_dispex);

    ret->IHTMLTxtRange_iface.lpVtbl = &HTMLTxtRangeVtbl;
    ret->IOleCommandTarget_iface.lpVtbl = &OleCommandTargetVtbl;
    ret->ref = 1;

    if(nsrange)
        FUNC3(nsrange);
    ret->nsrange = nsrange;

    ret->doc = doc;
    FUNC2(&doc->range_list, &ret->entry);

    *p = &ret->IHTMLTxtRange_iface;
    return S_OK;
}