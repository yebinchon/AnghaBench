#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_2__ IRichEditOle_iface; TYPE_3__ IUnknown_inner; TYPE_3__* outer_unk; int /*<<< orphan*/  clientsites; int /*<<< orphan*/  rangelist; int /*<<< orphan*/ * txtSel; int /*<<< orphan*/ * editor; TYPE_1__ ITextDocument2Old_iface; } ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  int LRESULT ;
typedef  TYPE_2__* LPVOID ;
typedef  TYPE_3__ IUnknown ;
typedef  TYPE_4__ IRichEditOleImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reo_unk_vtbl ; 
 int /*<<< orphan*/  revt ; 
 int /*<<< orphan*/  tdvt ; 

LRESULT FUNC3(IUnknown *outer_unk, ME_TextEditor *editor, LPVOID *ppvObj)
{
    IRichEditOleImpl *reo;

    reo = FUNC1(sizeof(IRichEditOleImpl));
    if (!reo)
        return 0;

    reo->IUnknown_inner.lpVtbl = &reo_unk_vtbl;
    reo->IRichEditOle_iface.lpVtbl = &revt;
    reo->ITextDocument2Old_iface.lpVtbl = &tdvt;
    reo->ref = 1;
    reo->editor = editor;
    reo->txtSel = NULL;

    FUNC0("Created %p\n",reo);
    FUNC2(&reo->rangelist);
    FUNC2(&reo->clientsites);
    if (outer_unk)
        reo->outer_unk = outer_unk;
    else
        reo->outer_unk = &reo->IUnknown_inner;
    *ppvObj = &reo->IRichEditOle_iface;

    return 1;
}