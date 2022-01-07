
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int hd3d; int d3d_dev; int d3d_proc; int outTexture; int processorOutput; } ;
typedef TYPE_2__ filter_sys_t ;


 int D3D11_Destroy (int *) ;
 int D3D11_FilterReleaseInstance (int *) ;
 int D3D11_ReleaseProcessor (int *) ;
 int ID3D11Texture2D_Release (int ) ;
 int ID3D11VideoProcessorOutputView_Release (int ) ;
 int free (TYPE_2__*) ;
 scalar_t__ likely (int ) ;

void D3D11CloseDeinterlace(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    filter_sys_t *sys = filter->p_sys;

    if (likely(sys->processorOutput))
        ID3D11VideoProcessorOutputView_Release(sys->processorOutput);
    ID3D11Texture2D_Release(sys->outTexture);
    D3D11_ReleaseProcessor( &sys->d3d_proc );
    D3D11_FilterReleaseInstance(&sys->d3d_dev);
    D3D11_Destroy(&sys->hd3d);

    free(sys);
}
