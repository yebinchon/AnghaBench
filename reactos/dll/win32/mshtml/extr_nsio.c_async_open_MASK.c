#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  header; TYPE_6__* bscallback; TYPE_3__* window; } ;
typedef  TYPE_5__ start_binding_task_t ;
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsIStreamListener ;
struct TYPE_20__ {int /*<<< orphan*/  IBindStatusCallback_iface; } ;
struct TYPE_24__ {TYPE_2__ bsc; } ;
typedef  TYPE_6__ nsChannelBSC ;
struct TYPE_25__ {TYPE_1__* uri; } ;
typedef  TYPE_7__ nsChannel ;
struct TYPE_22__ {TYPE_3__* inner_window; } ;
struct TYPE_26__ {TYPE_4__ base; int /*<<< orphan*/  pending_window; } ;
struct TYPE_21__ {int /*<<< orphan*/  task_magic; } ;
struct TYPE_19__ {int /*<<< orphan*/  uri; } ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  TYPE_8__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BINDING_NAVIGATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NS_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  NS_ERROR_UNEXPECTED ; 
 int /*<<< orphan*/  NS_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,TYPE_6__*) ; 
 TYPE_5__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  start_binding_proc ; 
 int /*<<< orphan*/  start_binding_task_destr ; 

__attribute__((used)) static nsresult FUNC13(nsChannel *This, HTMLOuterWindow *window, BOOL is_doc_channel, nsIStreamListener *listener,
        nsISupports *context)
{
    nsChannelBSC *bscallback;
    IMoniker *mon = NULL;
    HRESULT hres;

    hres = FUNC0(NULL, This->uri->uri, &mon, 0);
    if(FUNC1(hres)) {
        FUNC5("CreateURLMoniker failed: %08x\n", hres);
        return NS_ERROR_UNEXPECTED;
    }

    if(is_doc_channel)
        FUNC12(window, mon, BINDING_NAVIGATED);

    hres = FUNC8(mon, NULL, NULL, 0, is_doc_channel, &bscallback);
    FUNC3(mon);
    if(FUNC1(hres))
        return NS_ERROR_UNEXPECTED;

    FUNC7(bscallback, This, listener, context);

    if(is_doc_channel) {
        hres = FUNC9(window, bscallback);
        if(FUNC4(hres))
            FUNC6(window, window->pending_window);
        FUNC2(&bscallback->bsc.IBindStatusCallback_iface);
        if(FUNC1(hres))
            return NS_ERROR_UNEXPECTED;
    }else {
        start_binding_task_t *task;

        task = FUNC10(sizeof(start_binding_task_t));
        if(!task) {
            FUNC2(&bscallback->bsc.IBindStatusCallback_iface);
            return NS_ERROR_OUT_OF_MEMORY;
        }

        task->window = window->base.inner_window;
        task->bscallback = bscallback;
        hres = FUNC11(&task->header, start_binding_proc, start_binding_task_destr, window->base.inner_window->task_magic);
        if(FUNC1(hres))
            return NS_ERROR_OUT_OF_MEMORY;
    }

    return NS_OK;
}