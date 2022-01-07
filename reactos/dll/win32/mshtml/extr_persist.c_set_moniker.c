
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_18__ ;


typedef int nsWineURI ;
typedef int nsISupports ;
struct TYPE_23__ {int IBindStatusCallback_iface; } ;
struct TYPE_25__ {TYPE_2__ bsc; } ;
typedef TYPE_4__ nsChannelBSC ;
struct TYPE_26__ {int header; int url; int set_download; TYPE_8__* doc; } ;
typedef TYPE_5__ download_proc_task_t ;
struct TYPE_27__ {int header; TYPE_8__* doc; } ;
typedef TYPE_6__ docobj_task_t ;
struct TYPE_24__ {int task_magic; TYPE_7__* window; } ;
struct TYPE_29__ {TYPE_3__ basedoc; scalar_t__ frame; } ;
struct TYPE_22__ {TYPE_18__* inner_window; } ;
struct TYPE_28__ {int pending_window; TYPE_1__ base; TYPE_8__* doc_obj; } ;
struct TYPE_21__ {int task_magic; scalar_t__ doc; } ;
typedef int LPOLESTR ;
typedef int IUri ;
typedef int IMoniker ;
typedef int IBindCtx ;
typedef TYPE_7__ HTMLOuterWindow ;
typedef TYPE_8__ HTMLDocumentObj ;
typedef int HRESULT ;
typedef int BOOL ;


 int CoTaskMemFree (int ) ;
 scalar_t__ FAILED (int ) ;
 int HTMLDocument_LockContainer (TYPE_8__*,int ) ;
 int IBindStatusCallback_Release (int *) ;
 int IMoniker_GetDisplayName (int *,int *,int *,int *) ;
 int IUri_Release (int *) ;
 int LOAD_FLAGS_BYPASS_CACHE ;
 int READYSTATE_LOADING ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_7__*,...) ;
 int TRUE ;
 int WARN (char*,int ) ;
 int abort_window_bindings (TYPE_18__*) ;
 int create_channelbsc (int *,int *,int *,int ,int ,TYPE_4__**) ;
 int create_doc_uri (TYPE_7__*,int *,int **) ;
 int create_pending_window (TYPE_7__*,TYPE_4__*) ;
 int create_uri (int ,int ,int **) ;
 int debugstr_w (int ) ;
 void* heap_alloc (int) ;
 int load_nsuri (TYPE_7__*,int *,int *,TYPE_4__*,int ) ;
 int nsISupports_Release (int *) ;
 int push_task (int *,int ,int *,int ) ;
 int remove_target_tasks (int ) ;
 int set_downloading_proc ;
 int * set_downloading_task_destr ;
 int set_progress_proc ;
 int set_ready_state (TYPE_7__*,int ) ;

HRESULT set_moniker(HTMLOuterWindow *window, IMoniker *mon, IUri *nav_uri, IBindCtx *pibc, nsChannelBSC *async_bsc,
        BOOL set_download)
{
    download_proc_task_t *download_task;
    HTMLDocumentObj *doc_obj = ((void*)0);
    nsChannelBSC *bscallback;
    nsWineURI *nsuri;
    LPOLESTR url;
    IUri *uri;
    HRESULT hres;

    if(window->doc_obj && window->doc_obj->basedoc.window == window)
        doc_obj = window->doc_obj;

    hres = IMoniker_GetDisplayName(mon, pibc, ((void*)0), &url);
    if(FAILED(hres)) {
        WARN("GetDiaplayName failed: %08x\n", hres);
        return hres;
    }

    if(nav_uri) {
        uri = nav_uri;
    }else {
        hres = create_uri(url, 0, &uri);
        if(FAILED(hres)) {
            CoTaskMemFree(url);
            return hres;
        }
    }

    TRACE("got url: %s\n", debugstr_w(url));

    set_ready_state(window, READYSTATE_LOADING);

    hres = create_doc_uri(window, uri, &nsuri);
    if(!nav_uri)
        IUri_Release(uri);
    if(SUCCEEDED(hres)) {
        if(async_bsc)
            bscallback = async_bsc;
        else
            hres = create_channelbsc(mon, ((void*)0), ((void*)0), 0, TRUE, &bscallback);
    }

    if(SUCCEEDED(hres)) {
        if(window->base.inner_window->doc)
            remove_target_tasks(window->base.inner_window->task_magic);
        abort_window_bindings(window->base.inner_window);

        hres = load_nsuri(window, nsuri, ((void*)0), bscallback, LOAD_FLAGS_BYPASS_CACHE);
        nsISupports_Release((nsISupports*)nsuri);
        if(SUCCEEDED(hres)) {
            hres = create_pending_window(window, bscallback);
            TRACE("pending window for %p %p %p\n", window, bscallback, window->pending_window);
        }
        if(bscallback != async_bsc)
            IBindStatusCallback_Release(&bscallback->bsc.IBindStatusCallback_iface);
    }

    if(FAILED(hres)) {
        CoTaskMemFree(url);
        return hres;
    }

    if(doc_obj) {
        HTMLDocument_LockContainer(doc_obj, TRUE);

        if(doc_obj->frame) {
            docobj_task_t *task;

            task = heap_alloc(sizeof(docobj_task_t));
            task->doc = doc_obj;
            hres = push_task(&task->header, set_progress_proc, ((void*)0), doc_obj->basedoc.task_magic);
            if(FAILED(hres)) {
                CoTaskMemFree(url);
                return hres;
            }
        }

        download_task = heap_alloc(sizeof(download_proc_task_t));
        download_task->doc = doc_obj;
        download_task->set_download = set_download;
        download_task->url = url;
        return push_task(&download_task->header, set_downloading_proc, set_downloading_task_destr, doc_obj->basedoc.task_magic);
    }

    return S_OK;
}
