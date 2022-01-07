
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int d3d9_dll; int hdecoder_dll; int d3d_dev; int processor; int hw_surface; } ;
typedef TYPE_2__ filter_sys_t ;


 int D3D9_FilterReleaseInstance (int *) ;
 int FreeLibrary (int ) ;
 int IDirect3DSurface9_Release (int ) ;
 int IDirectXVideoProcessor_Release (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void D3D9CloseAdjust(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    filter_sys_t *sys = filter->p_sys;

    IDirect3DSurface9_Release( sys->hw_surface );
    IDirectXVideoProcessor_Release( sys->processor );
    D3D9_FilterReleaseInstance( &sys->d3d_dev );
    FreeLibrary( sys->hdecoder_dll );
    FreeLibrary( sys->d3d9_dll );

    free(sys);
}
