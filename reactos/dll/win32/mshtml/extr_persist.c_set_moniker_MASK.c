#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsWineURI ;
typedef  int /*<<< orphan*/  nsISupports ;
struct TYPE_23__ {int /*<<< orphan*/  IBindStatusCallback_iface; } ;
struct TYPE_25__ {TYPE_2__ bsc; } ;
typedef  TYPE_4__ nsChannelBSC ;
struct TYPE_26__ {int /*<<< orphan*/  header; int /*<<< orphan*/  url; int /*<<< orphan*/  set_download; TYPE_8__* doc; } ;
typedef  TYPE_5__ download_proc_task_t ;
struct TYPE_27__ {int /*<<< orphan*/  header; TYPE_8__* doc; } ;
typedef  TYPE_6__ docobj_task_t ;
struct TYPE_24__ {int /*<<< orphan*/  task_magic; TYPE_7__* window; } ;
struct TYPE_29__ {TYPE_3__ basedoc; scalar_t__ frame; } ;
struct TYPE_22__ {TYPE_18__* inner_window; } ;
struct TYPE_28__ {int /*<<< orphan*/  pending_window; TYPE_1__ base; TYPE_8__* doc_obj; } ;
struct TYPE_21__ {int /*<<< orphan*/  task_magic; scalar_t__ doc; } ;
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  TYPE_7__ HTMLOuterWindow ;
typedef  TYPE_8__ HTMLDocumentObj ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOAD_FLAGS_BYPASS_CACHE ; 
 int /*<<< orphan*/  READYSTATE_LOADING ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_7__*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_downloading_proc ; 
 int /*<<< orphan*/ * set_downloading_task_destr ; 
 int /*<<< orphan*/  set_progress_proc ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*,int /*<<< orphan*/ ) ; 

HRESULT FUNC21(HTMLOuterWindow *window, IMoniker *mon, IUri *nav_uri, IBindCtx *pibc, nsChannelBSC *async_bsc,
        BOOL set_download)
{
    download_proc_task_t *download_task;
    HTMLDocumentObj *doc_obj = NULL;
    nsChannelBSC *bscallback;
    nsWineURI *nsuri;
    LPOLESTR url;
    IUri *uri;
    HRESULT hres;

    if(window->doc_obj && window->doc_obj->basedoc.window == window)
        doc_obj = window->doc_obj;

    hres = FUNC4(mon, pibc, NULL, &url);
    if(FUNC1(hres)) {
        FUNC8("GetDiaplayName failed: %08x\n", hres);
        return hres;
    }

    if(nav_uri) {
        uri = nav_uri;
    }else {
        hres = FUNC13(url, 0, &uri);
        if(FUNC1(hres)) {
            FUNC0(url);
            return hres;
        }
    }

    FUNC7("got url: %s\n", FUNC14(url));

    FUNC20(window, READYSTATE_LOADING);

    hres = FUNC11(window, uri, &nsuri);
    if(!nav_uri)
        FUNC5(uri);
    if(FUNC6(hres)) {
        if(async_bsc)
            bscallback = async_bsc;
        else
            hres = FUNC10(mon, NULL, NULL, 0, TRUE, &bscallback);
    }

    if(FUNC6(hres)) {
        if(window->base.inner_window->doc)
            FUNC19(window->base.inner_window->task_magic);
        FUNC9(window->base.inner_window);

        hres = FUNC16(window, nsuri, NULL, bscallback, LOAD_FLAGS_BYPASS_CACHE);
        FUNC17((nsISupports*)nsuri); /* FIXME */
        if(FUNC6(hres)) {
            hres = FUNC12(window, bscallback);
            FUNC7("pending window for %p %p %p\n", window, bscallback, window->pending_window);
        }
        if(bscallback != async_bsc)
            FUNC3(&bscallback->bsc.IBindStatusCallback_iface);
    }

    if(FUNC1(hres)) {
        FUNC0(url);
        return hres;
    }

    if(doc_obj) {
        FUNC2(doc_obj, TRUE);

        if(doc_obj->frame) {
            docobj_task_t *task;

            task = FUNC15(sizeof(docobj_task_t));
            task->doc = doc_obj;
            hres = FUNC18(&task->header, set_progress_proc, NULL, doc_obj->basedoc.task_magic);
            if(FUNC1(hres)) {
                FUNC0(url);
                return hres;
            }
        }

        download_task = FUNC15(sizeof(download_proc_task_t));
        download_task->doc = doc_obj;
        download_task->set_download = set_download;
        download_task->url = url;
        return FUNC18(&download_task->header, set_downloading_proc, set_downloading_task_destr, doc_obj->basedoc.task_magic);
    }

    return S_OK;
}