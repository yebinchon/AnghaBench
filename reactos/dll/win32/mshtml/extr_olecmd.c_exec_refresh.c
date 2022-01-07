
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int header; TYPE_3__* window; } ;
typedef TYPE_4__ refresh_task_t ;
typedef int VARIANT ;
struct TYPE_13__ {TYPE_3__* window; TYPE_1__* doc_obj; } ;
struct TYPE_10__ {int IHTMLWindow2_iface; } ;
struct TYPE_11__ {int task_magic; TYPE_2__ base; } ;
struct TYPE_9__ {scalar_t__ client; } ;
typedef int IOleCommandTarget ;
typedef TYPE_5__ HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int CGID_DocHostCommandHandler ;
 int E_OUTOFMEMORY ;
 int E_UNEXPECTED ;
 int IHTMLWindow2_AddRef (int *) ;
 int IID_IOleCommandTarget ;
 int IOleClientSite_QueryInterface (scalar_t__,int *,void**) ;
 int IOleCommandTarget_Exec (int *,int *,int,int ,int *,int *) ;
 int IOleCommandTarget_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_5__*,int ,int ,int *) ;
 int debugstr_variant (int *) ;
 TYPE_4__* heap_alloc (int) ;
 int push_task (int *,int ,int ,int ) ;
 int refresh_destr ;
 int refresh_proc ;

__attribute__((used)) static HRESULT exec_refresh(HTMLDocument *This, DWORD nCmdexecopt, VARIANT *pvaIn, VARIANT *pvaOut)
{
    refresh_task_t *task;
    HRESULT hres;

    TRACE("(%p)->(%d %s %p)\n", This, nCmdexecopt, debugstr_variant(pvaIn), pvaOut);

    if(This->doc_obj->client) {
        IOleCommandTarget *olecmd;

        hres = IOleClientSite_QueryInterface(This->doc_obj->client, &IID_IOleCommandTarget, (void**)&olecmd);
        if(SUCCEEDED(hres)) {
            hres = IOleCommandTarget_Exec(olecmd, &CGID_DocHostCommandHandler, 2300, nCmdexecopt, pvaIn, pvaOut);
            IOleCommandTarget_Release(olecmd);
            if(SUCCEEDED(hres))
                return S_OK;
        }
    }

    if(!This->window)
        return E_UNEXPECTED;

    task = heap_alloc(sizeof(*task));
    if(!task)
        return E_OUTOFMEMORY;

    IHTMLWindow2_AddRef(&This->window->base.IHTMLWindow2_iface);
    task->window = This->window;

    return push_task(&task->header, refresh_proc, refresh_destr, This->window->task_magic);
}
