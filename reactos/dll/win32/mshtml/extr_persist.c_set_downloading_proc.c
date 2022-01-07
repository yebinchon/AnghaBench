
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_6__ {scalar_t__ set_download; int url; TYPE_2__* doc; } ;
typedef TYPE_1__ download_proc_task_t ;
struct TYPE_7__ {scalar_t__ hostui; scalar_t__ view_sink; int client; } ;
typedef int IDropTarget ;
typedef TYPE_2__ HTMLDocumentObj ;
typedef int HRESULT ;


 int DVASPECT_CONTENT ;
 int FIXME (char*) ;
 int IAdviseSink_OnViewChange (scalar_t__,int ,int) ;
 int IDS_STATUS_DOWNLOADINGFROM ;
 int IDocHostUIHandler_GetDropTarget (scalar_t__,int *,int **) ;
 int IDropTarget_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,TYPE_2__*) ;
 int set_download_state (TYPE_2__*,int) ;
 int set_statustext (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void set_downloading_proc(task_t *_task)
{
    download_proc_task_t *task = (download_proc_task_t*)_task;
    HTMLDocumentObj *doc = task->doc;
    HRESULT hres;

    TRACE("(%p)\n", doc);

    set_statustext(doc, IDS_STATUS_DOWNLOADINGFROM, task->url);

    if(task->set_download)
        set_download_state(doc, 1);

    if(!doc->client)
        return;

    if(doc->view_sink)
        IAdviseSink_OnViewChange(doc->view_sink, DVASPECT_CONTENT, -1);

    if(doc->hostui) {
        IDropTarget *drop_target = ((void*)0);

        hres = IDocHostUIHandler_GetDropTarget(doc->hostui, ((void*)0) , &drop_target);
        if(SUCCEEDED(hres) && drop_target) {
            FIXME("Use IDropTarget\n");
            IDropTarget_Release(drop_target);
        }
    }
}
