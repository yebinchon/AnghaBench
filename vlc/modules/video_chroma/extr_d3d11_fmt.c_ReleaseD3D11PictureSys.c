
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ processorOutput; scalar_t__ processorInput; scalar_t__ context; scalar_t__* texture; scalar_t__* renderSrc; } ;
typedef TYPE_1__ picture_sys_d3d11_t ;


 int D3D11_MAX_SHADER_VIEW ;
 int ID3D11DeviceContext_Release (scalar_t__) ;
 int ID3D11ShaderResourceView_Release (scalar_t__) ;
 int ID3D11Texture2D_Release (scalar_t__) ;
 int ID3D11VideoProcessorInputView_Release (scalar_t__) ;
 int ID3D11VideoProcessorOutputView_Release (scalar_t__) ;

void ReleaseD3D11PictureSys(picture_sys_d3d11_t *p_sys)
{
    for (int i=0; i<D3D11_MAX_SHADER_VIEW; i++) {
        if (p_sys->renderSrc[i])
            ID3D11ShaderResourceView_Release(p_sys->renderSrc[i]);
        if (p_sys->texture[i])
            ID3D11Texture2D_Release(p_sys->texture[i]);
    }
    if (p_sys->context)
        ID3D11DeviceContext_Release(p_sys->context);
    if (p_sys->processorInput)
        ID3D11VideoProcessorInputView_Release(p_sys->processorInput);
    if (p_sys->processorOutput)
        ID3D11VideoProcessorOutputView_Release(p_sys->processorOutput);
}
