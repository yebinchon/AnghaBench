
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_9__ {int d3d_dev; int d3d_proc; TYPE_1__* out; scalar_t__* procOutput; scalar_t__* procInput; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_7__ {int texture; } ;


 int AdjustCallback ;
 int D3D11_FilterReleaseInstance (int *) ;
 int D3D11_ReleaseProcessor (int *) ;
 int ID3D11Texture2D_Release (int ) ;
 int ID3D11VideoProcessorInputView_Release (scalar_t__) ;
 int ID3D11VideoProcessorOutputView_Release (scalar_t__) ;
 int PROCESSOR_SLICES ;
 int free (TYPE_3__*) ;
 int var_DelCallback (TYPE_2__*,char*,int ,TYPE_3__*) ;

__attribute__((used)) static void D3D11CloseAdjust(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    filter_sys_t *sys = filter->p_sys;

    var_DelCallback( filter, "contrast", AdjustCallback, sys );
    var_DelCallback( filter, "brightness", AdjustCallback, sys );
    var_DelCallback( filter, "hue", AdjustCallback, sys );
    var_DelCallback( filter, "saturation", AdjustCallback, sys );
    var_DelCallback( filter, "gamma", AdjustCallback, sys );
    var_DelCallback( filter, "brightness-threshold",
                                             AdjustCallback, sys );

    for (int i=0; i<PROCESSOR_SLICES; i++)
    {
        if (sys->procInput[i])
            ID3D11VideoProcessorInputView_Release(sys->procInput[i]);
        if (sys->procOutput[i])
            ID3D11VideoProcessorOutputView_Release(sys->procOutput[i]);
    }
    ID3D11Texture2D_Release(sys->out[0].texture);
    ID3D11Texture2D_Release(sys->out[1].texture);
    D3D11_ReleaseProcessor( &sys->d3d_proc );
    D3D11_FilterReleaseInstance(&sys->d3d_dev);

    free(sys);
}
