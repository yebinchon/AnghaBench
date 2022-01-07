
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int IHTMLWindow2_iface; TYPE_3__* inner_window; int * outer_window; } ;
struct TYPE_6__ {int dispex; } ;
struct TYPE_8__ {int * mon; int task_magic; TYPE_2__ base; TYPE_1__ event_target; int script_queue; int bindings; int script_hosts; } ;
typedef int IUnknown ;
typedef int IMoniker ;
typedef int HTMLOuterWindow ;
typedef TYPE_3__ HTMLInnerWindow ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLWindow_dispex ;
 int IMoniker_AddRef (int *) ;
 int S_OK ;
 TYPE_3__* alloc_window (int) ;
 int get_task_target_magic () ;
 int init_dispex (int *,int *,int *) ;
 int list_init (int *) ;

__attribute__((used)) static HRESULT create_inner_window(HTMLOuterWindow *outer_window, IMoniker *mon, HTMLInnerWindow **ret)
{
    HTMLInnerWindow *window;

    window = alloc_window(sizeof(HTMLInnerWindow));
    if(!window)
        return E_OUTOFMEMORY;

    list_init(&window->script_hosts);
    list_init(&window->bindings);
    list_init(&window->script_queue);

    window->base.outer_window = outer_window;
    window->base.inner_window = window;

    init_dispex(&window->event_target.dispex, (IUnknown*)&window->base.IHTMLWindow2_iface, &HTMLWindow_dispex);

    window->task_magic = get_task_target_magic();

    if(mon) {
        IMoniker_AddRef(mon);
        window->mon = mon;
    }

    *ret = window;
    return S_OK;
}
