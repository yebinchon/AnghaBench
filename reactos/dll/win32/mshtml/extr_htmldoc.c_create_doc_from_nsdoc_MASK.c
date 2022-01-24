#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLDocument ;
struct TYPE_21__ {int /*<<< orphan*/ * forward_container; } ;
struct TYPE_22__ {TYPE_3__ cp_container; } ;
struct TYPE_18__ {TYPE_3__* cp_container; int /*<<< orphan*/ * vtbl; } ;
struct TYPE_25__ {TYPE_4__ basedoc; TYPE_17__ node; int /*<<< orphan*/ * nsdoc; } ;
struct TYPE_20__ {scalar_t__ window; int /*<<< orphan*/  cp_container; } ;
struct TYPE_24__ {TYPE_2__ basedoc; } ;
struct TYPE_19__ {scalar_t__ outer_window; } ;
struct TYPE_23__ {TYPE_1__ base; } ;
typedef  TYPE_5__ HTMLInnerWindow ;
typedef  TYPE_6__ HTMLDocumentObj ;
typedef  TYPE_7__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,TYPE_17__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HTMLDocumentNodeImplVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_7__* FUNC1 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

HRESULT FUNC5(nsIDOMHTMLDocument *nsdoc, HTMLDocumentObj *doc_obj, HTMLInnerWindow *window, HTMLDocumentNode **ret)
{
    HTMLDocumentNode *doc;

    doc = FUNC1(doc_obj, window);
    if(!doc)
        return E_OUTOFMEMORY;

    if(!doc_obj->basedoc.window || window->base.outer_window == doc_obj->basedoc.window)
        doc->basedoc.cp_container.forward_container = &doc_obj->basedoc.cp_container;

    FUNC0(doc, &doc->node, (nsIDOMNode*)nsdoc);

    FUNC4(nsdoc);
    doc->nsdoc = nsdoc;

    FUNC3(doc);
    FUNC2(doc);

    doc->node.vtbl = &HTMLDocumentNodeImplVtbl;
    doc->node.cp_container = &doc->basedoc.cp_container;

    *ret = doc;
    return S_OK;
}