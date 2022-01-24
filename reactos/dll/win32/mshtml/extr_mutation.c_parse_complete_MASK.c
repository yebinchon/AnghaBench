#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* window; int /*<<< orphan*/  cp_container; } ;
struct TYPE_10__ {scalar_t__ usermode; TYPE_5__ basedoc; int /*<<< orphan*/  doc_object_service; scalar_t__ webbrowser; scalar_t__ view_sink; } ;
struct TYPE_8__ {int /*<<< orphan*/  IHTMLWindow2_iface; } ;
struct TYPE_9__ {int load_flags; TYPE_1__ base; } ;
typedef  TYPE_3__ HTMLDocumentObj ;

/* Variables and functions */
 int BINDING_REFRESH ; 
 int /*<<< orphan*/  DVASPECT_CONTENT ; 
 scalar_t__ EDITMODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC6(HTMLDocumentObj *doc)
{
    FUNC2("(%p)\n", doc);

    if(doc->usermode == EDITMODE)
        FUNC5(&doc->basedoc);

    FUNC3(doc);
    if(doc->view_sink)
        FUNC0(doc->view_sink, DVASPECT_CONTENT, -1);
    FUNC4(&doc->basedoc.cp_container, 1005);
    FUNC3(doc);

    if(doc->webbrowser && doc->usermode != EDITMODE && !(doc->basedoc.window->load_flags & BINDING_REFRESH))
        FUNC1(doc->doc_object_service, &doc->basedoc.window->base.IHTMLWindow2_iface, 0);

    /* FIXME: IE7 calls EnableModelless(TRUE), EnableModelless(FALSE) and sets interactive state here */
}