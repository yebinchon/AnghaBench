
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nschannel; scalar_t__ is_doc_channel; } ;
typedef TYPE_1__ nsChannelBSC ;
typedef int HRESULT ;
typedef int BSCallback ;


 int E_ABORT ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int async_stop_request (TYPE_1__*) ;
 int handle_navigation_error (TYPE_1__*,int ) ;
 TYPE_1__* nsChannelBSC_from_BSCallback (int *) ;
 int on_stop_nsrequest (TYPE_1__*,int ) ;

__attribute__((used)) static HRESULT nsChannelBSC_stop_binding(BSCallback *bsc, HRESULT result)
{
    nsChannelBSC *This = nsChannelBSC_from_BSCallback(bsc);

    if(result != E_ABORT) {
        if(FAILED(result))
            handle_navigation_error(This, result);
        else if(This->is_doc_channel && This->nschannel) {
            result = async_stop_request(This);
            if(SUCCEEDED(result))
                return S_OK;
        }
    }

    on_stop_nsrequest(This, result);
    return S_OK;
}
