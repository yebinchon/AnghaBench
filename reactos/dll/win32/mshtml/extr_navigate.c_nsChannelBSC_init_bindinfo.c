
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int request_data; } ;
struct TYPE_6__ {TYPE_1__ bsc; TYPE_3__* nschannel; } ;
typedef TYPE_2__ nsChannelBSC ;
struct TYPE_7__ {int request_headers; int post_data_contains_headers; scalar_t__ post_data_stream; } ;
typedef TYPE_3__ nsChannel ;
typedef int HRESULT ;
typedef int BSCallback ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 TYPE_2__* nsChannelBSC_from_BSCallback (int *) ;
 int read_post_data_stream (scalar_t__,int ,int *,int *) ;

__attribute__((used)) static HRESULT nsChannelBSC_init_bindinfo(BSCallback *bsc)
{
    nsChannelBSC *This = nsChannelBSC_from_BSCallback(bsc);
    nsChannel *nschannel = This->nschannel;
    HRESULT hres;

    if(nschannel && nschannel->post_data_stream) {
        hres = read_post_data_stream(nschannel->post_data_stream, nschannel->post_data_contains_headers,
                &nschannel->request_headers, &This->bsc.request_data);
        if(FAILED(hres))
            return hres;
    }

    return S_OK;
}
