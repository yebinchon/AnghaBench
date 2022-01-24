#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  IDispatchEx_iface; } ;
struct TYPE_17__ {int /*<<< orphan*/  window; int /*<<< orphan*/ * doc_obj; TYPE_5__* doc_node; } ;
struct TYPE_13__ {TYPE_7__ dispex; } ;
struct TYPE_14__ {TYPE_2__ event_target; int /*<<< orphan*/  IHTMLDOMNode_iface; } ;
struct TYPE_16__ {int ref; int /*<<< orphan*/  plugin_hosts; int /*<<< orphan*/  range_list; int /*<<< orphan*/  selection_list; TYPE_3__ node; TYPE_6__ basedoc; TYPE_4__* window; } ;
struct TYPE_12__ {int /*<<< orphan*/  outer_window; } ;
struct TYPE_15__ {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_4__ HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HTMLDocumentObj ;
typedef  TYPE_5__ HTMLDocumentNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  HTMLDocumentNode_dispex ; 
 TYPE_5__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HTMLDocumentNode *FUNC5(HTMLDocumentObj *doc_obj, HTMLInnerWindow *window)
{
    HTMLDocumentNode *doc;

    doc = FUNC1(sizeof(HTMLDocumentNode));
    if(!doc)
        return NULL;

    doc->ref = 1;
    doc->basedoc.doc_node = doc;
    doc->basedoc.doc_obj = doc_obj;
    doc->basedoc.window = window->base.outer_window;
    doc->window = window;

    FUNC2(&doc->node.event_target.dispex, (IUnknown*)&doc->node.IHTMLDOMNode_iface,
            &HTMLDocumentNode_dispex);
    FUNC3(&doc->basedoc, (IUnknown*)&doc->node.IHTMLDOMNode_iface,
            &doc->node.event_target.dispex.IDispatchEx_iface);
    FUNC0(doc);

    FUNC4(&doc->selection_list);
    FUNC4(&doc->range_list);
    FUNC4(&doc->plugin_hosts);

    return doc;
}