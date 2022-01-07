
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_23__ {int header; TYPE_6__* bscallback; TYPE_3__* window; } ;
typedef TYPE_5__ start_binding_task_t ;
typedef int nsresult ;
typedef int nsISupports ;
typedef int nsIStreamListener ;
struct TYPE_20__ {int IBindStatusCallback_iface; } ;
struct TYPE_24__ {TYPE_2__ bsc; } ;
typedef TYPE_6__ nsChannelBSC ;
struct TYPE_25__ {TYPE_1__* uri; } ;
typedef TYPE_7__ nsChannel ;
struct TYPE_22__ {TYPE_3__* inner_window; } ;
struct TYPE_26__ {TYPE_4__ base; int pending_window; } ;
struct TYPE_21__ {int task_magic; } ;
struct TYPE_19__ {int uri; } ;
typedef int IMoniker ;
typedef TYPE_8__ HTMLOuterWindow ;
typedef int HRESULT ;
typedef int BOOL ;


 int BINDING_NAVIGATED ;
 int CreateURLMonikerEx2 (int *,int ,int **,int ) ;
 scalar_t__ FAILED (int ) ;
 int IBindStatusCallback_Release (int *) ;
 int IMoniker_Release (int *) ;
 int NS_ERROR_OUT_OF_MEMORY ;
 int NS_ERROR_UNEXPECTED ;
 int NS_OK ;
 scalar_t__ SUCCEEDED (int ) ;
 int WARN (char*,int ) ;
 int async_start_doc_binding (TYPE_8__*,int ) ;
 int channelbsc_set_channel (TYPE_6__*,TYPE_7__*,int *,int *) ;
 int create_channelbsc (int *,int *,int *,int ,int ,TYPE_6__**) ;
 int create_pending_window (TYPE_8__*,TYPE_6__*) ;
 TYPE_5__* heap_alloc (int) ;
 int push_task (int *,int ,int ,int ) ;
 int set_current_mon (TYPE_8__*,int *,int ) ;
 int start_binding_proc ;
 int start_binding_task_destr ;

__attribute__((used)) static nsresult async_open(nsChannel *This, HTMLOuterWindow *window, BOOL is_doc_channel, nsIStreamListener *listener,
        nsISupports *context)
{
    nsChannelBSC *bscallback;
    IMoniker *mon = ((void*)0);
    HRESULT hres;

    hres = CreateURLMonikerEx2(((void*)0), This->uri->uri, &mon, 0);
    if(FAILED(hres)) {
        WARN("CreateURLMoniker failed: %08x\n", hres);
        return NS_ERROR_UNEXPECTED;
    }

    if(is_doc_channel)
        set_current_mon(window, mon, BINDING_NAVIGATED);

    hres = create_channelbsc(mon, ((void*)0), ((void*)0), 0, is_doc_channel, &bscallback);
    IMoniker_Release(mon);
    if(FAILED(hres))
        return NS_ERROR_UNEXPECTED;

    channelbsc_set_channel(bscallback, This, listener, context);

    if(is_doc_channel) {
        hres = create_pending_window(window, bscallback);
        if(SUCCEEDED(hres))
            async_start_doc_binding(window, window->pending_window);
        IBindStatusCallback_Release(&bscallback->bsc.IBindStatusCallback_iface);
        if(FAILED(hres))
            return NS_ERROR_UNEXPECTED;
    }else {
        start_binding_task_t *task;

        task = heap_alloc(sizeof(start_binding_task_t));
        if(!task) {
            IBindStatusCallback_Release(&bscallback->bsc.IBindStatusCallback_iface);
            return NS_ERROR_OUT_OF_MEMORY;
        }

        task->window = window->base.inner_window;
        task->bscallback = bscallback;
        hres = push_task(&task->header, start_binding_proc, start_binding_task_destr, window->base.inner_window->task_magic);
        if(FAILED(hres))
            return NS_ERROR_OUT_OF_MEMORY;
    }

    return NS_OK;
}
