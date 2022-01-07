
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int IBindStatusCallback_iface; TYPE_5__* window; } ;
struct TYPE_12__ {TYPE_2__ bsc; TYPE_3__* nschannel; } ;
typedef TYPE_4__ nsChannelBSC ;
struct TYPE_9__ {int outer_window; } ;
struct TYPE_13__ {TYPE_1__ base; TYPE_4__* bscallback; } ;
struct TYPE_11__ {int content_type; } ;
typedef int IStream ;
typedef int IMoniker ;
typedef TYPE_5__ HTMLInnerWindow ;
typedef int HRESULT ;


 int ERR (char*) ;
 int ERROR_SUCCESS ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IBindStatusCallback_OnStopBinding (int *,int ,int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int async_stop_request (TYPE_4__*) ;
 int heap_strdupA (char*) ;
 int read_stream_data (TYPE_4__*,int *) ;
 int set_current_mon (int ,int *,int ) ;

HRESULT channelbsc_load_stream(HTMLInnerWindow *pending_window, IMoniker *mon, IStream *stream)
{
    nsChannelBSC *bscallback = pending_window->bscallback;
    HRESULT hres = S_OK;

    if(!bscallback->nschannel) {
        ERR("NULL nschannel\n");
        return E_FAIL;
    }

    bscallback->nschannel->content_type = heap_strdupA("text/html");
    if(!bscallback->nschannel->content_type)
        return E_OUTOFMEMORY;

    set_current_mon(pending_window->base.outer_window, mon, 0);

    bscallback->bsc.window = pending_window;
    if(stream)
        hres = read_stream_data(bscallback, stream);
    if(SUCCEEDED(hres))
        hres = async_stop_request(bscallback);
    if(FAILED(hres))
        IBindStatusCallback_OnStopBinding(&bscallback->bsc.IBindStatusCallback_iface, hres,
                ERROR_SUCCESS);

    return hres;
}
