#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMWindow ;
typedef  int /*<<< orphan*/  nsIDOMDocument ;
struct TYPE_12__ {TYPE_2__* doc; } ;
struct TYPE_13__ {TYPE_3__ node; } ;
struct TYPE_15__ {TYPE_5__* content_window; TYPE_4__ element; } ;
struct TYPE_14__ {TYPE_6__* frame_element; } ;
struct TYPE_10__ {int /*<<< orphan*/  window; int /*<<< orphan*/  doc_obj; } ;
struct TYPE_11__ {TYPE_1__ basedoc; } ;
typedef  TYPE_5__ HTMLOuterWindow ;
typedef  TYPE_6__ HTMLFrameBase ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *) ; 

HRESULT FUNC6(HTMLFrameBase *frame, nsIDOMDocument *nsdoc)
{
    nsIDOMWindow *nswindow;
    HTMLOuterWindow *window;
    nsresult nsres;
    HRESULT hres = S_OK;

    if(frame->content_window)
        return S_OK;

    nsres = FUNC3(nsdoc, &nswindow);
    if(FUNC2(nsres) || !nswindow)
        return E_FAIL;

    window = FUNC5(nswindow);
    if(!window)
        hres = FUNC1(frame->element.node.doc->basedoc.doc_obj, nswindow,
                frame->element.node.doc->basedoc.window, &window);
    FUNC4(nswindow);
    if(FUNC0(hres))
        return hres;

    frame->content_window = window;
    window->frame_element = frame;
    return S_OK;
}