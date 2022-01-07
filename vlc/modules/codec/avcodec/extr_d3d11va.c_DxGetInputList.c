
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_va_t ;
struct TYPE_9__ {int d3ddec; } ;
typedef TYPE_2__ vlc_va_sys_t ;
struct TYPE_10__ {unsigned int count; int * list; int (* pf_release ) (TYPE_3__*) ;} ;
typedef TYPE_3__ input_list_t ;
typedef unsigned int UINT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int ID3D11VideoDevice_GetVideoDecoderProfile (int ,unsigned int,int *) ;
 unsigned int ID3D11VideoDevice_GetVideoDecoderProfileCount (int ) ;
 int ReleaseInputList (TYPE_3__*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * calloc (unsigned int,int) ;
 int msg_Err (TYPE_1__*,char*,unsigned int,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int DxGetInputList(vlc_va_t *va, input_list_t *p_list)
{
    vlc_va_sys_t *sys = va->sys;
    HRESULT hr;

    UINT input_count = ID3D11VideoDevice_GetVideoDecoderProfileCount(sys->d3ddec);

    p_list->count = input_count;
    p_list->list = calloc(input_count, sizeof(*p_list->list));
    if (unlikely(p_list->list == ((void*)0))) {
        return VLC_ENOMEM;
    }
    p_list->pf_release = ReleaseInputList;

    for (unsigned i = 0; i < input_count; i++) {
        hr = ID3D11VideoDevice_GetVideoDecoderProfile(sys->d3ddec, i, &p_list->list[i]);
        if (FAILED(hr))
        {
            msg_Err(va, "GetVideoDecoderProfile %d failed. (hr=0x%lX)", i, hr);
            ReleaseInputList(p_list);
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}
