#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  header; TYPE_3__* window; } ;
typedef  TYPE_4__ refresh_task_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_13__ {TYPE_3__* window; TYPE_1__* doc_obj; } ;
struct TYPE_10__ {int /*<<< orphan*/  IHTMLWindow2_iface; } ;
struct TYPE_11__ {int /*<<< orphan*/  task_magic; TYPE_2__ base; } ;
struct TYPE_9__ {scalar_t__ client; } ;
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  TYPE_5__ HTMLDocument ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CGID_DocHostCommandHandler ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  refresh_destr ; 
 int /*<<< orphan*/  refresh_proc ; 

__attribute__((used)) static HRESULT FUNC9(HTMLDocument *This, DWORD nCmdexecopt, VARIANT *pvaIn, VARIANT *pvaOut)
{
    refresh_task_t *task;
    HRESULT hres;

    FUNC5("(%p)->(%d %s %p)\n", This, nCmdexecopt, FUNC6(pvaIn), pvaOut);

    if(This->doc_obj->client) {
        IOleCommandTarget *olecmd;

        hres = FUNC1(This->doc_obj->client, &IID_IOleCommandTarget, (void**)&olecmd);
        if(FUNC4(hres)) {
            hres = FUNC2(olecmd, &CGID_DocHostCommandHandler, 2300, nCmdexecopt, pvaIn, pvaOut);
            FUNC3(olecmd);
            if(FUNC4(hres))
                return S_OK;
        }
    }

    if(!This->window)
        return E_UNEXPECTED;

    task = FUNC7(sizeof(*task));
    if(!task)
        return E_OUTOFMEMORY;

    FUNC0(&This->window->base.IHTMLWindow2_iface);
    task->window = This->window;

    return FUNC8(&task->header, refresh_proc, refresh_destr, This->window->task_magic);
}