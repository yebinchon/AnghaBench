
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_va_t ;
struct TYPE_8__ {int d3ddec; } ;
typedef TYPE_2__ vlc_va_sys_t ;
struct TYPE_9__ {int pf_release; int * list; int count; } ;
typedef TYPE_3__ input_list_t ;
typedef int UINT ;
typedef int GUID ;


 scalar_t__ FAILED (int ) ;
 int IDirectXVideoDecoderService_GetDecoderDeviceGuids (int ,int *,int **) ;
 int ReleaseInputList ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static int DxGetInputList(vlc_va_t *va, input_list_t *p_list)
{
    vlc_va_sys_t *sys = va->sys;
    UINT input_count = 0;
    GUID *input_list = ((void*)0);
    if (FAILED(IDirectXVideoDecoderService_GetDecoderDeviceGuids(sys->d3ddec,
                                                                 &input_count,
                                                                 &input_list))) {
        msg_Err(va, "IDirectXVideoDecoderService_GetDecoderDeviceGuids failed");
        return VLC_EGENERIC;
    }

    p_list->count = input_count;
    p_list->list = input_list;
    p_list->pf_release = ReleaseInputList;
    return VLC_SUCCESS;
}
