
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_7__ {int surface; } ;
typedef TYPE_2__ picture_sys_d3d9_t ;
struct TYPE_6__ {int SampleFormat; } ;
struct TYPE_8__ {int PlanarAlpha; int SrcRect; int DstRect; scalar_t__ SampleData; scalar_t__ End; scalar_t__ Start; TYPE_1__ SampleFormat; int SrcSurface; } ;
typedef int RECT ;
typedef TYPE_3__ DXVA2_VideoSample ;


 TYPE_2__* ActiveD3D9PictureSys (int *) ;
 int DXVA2_Fixed32OpaqueAlpha () ;
 int DXVA2_SampleProgressiveFrame ;

__attribute__((used)) static void FillSample( DXVA2_VideoSample *p_sample,
                        picture_t *p_pic,
                        const RECT *p_area )
{
    picture_sys_d3d9_t *p_sys_src = ActiveD3D9PictureSys(p_pic);

    p_sample->SrcSurface = p_sys_src->surface;
    p_sample->SampleFormat.SampleFormat = DXVA2_SampleProgressiveFrame;
    p_sample->Start = 0;
    p_sample->End =0;
    p_sample->SampleData = 0;
    p_sample->DstRect = p_sample->SrcRect = *p_area;
    p_sample->PlanarAlpha = DXVA2_Fixed32OpaqueAlpha();
}
