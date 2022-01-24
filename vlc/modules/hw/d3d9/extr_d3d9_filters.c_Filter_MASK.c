#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_56__   TYPE_9__ ;
typedef  struct TYPE_55__   TYPE_8__ ;
typedef  struct TYPE_54__   TYPE_7__ ;
typedef  struct TYPE_53__   TYPE_6__ ;
typedef  struct TYPE_52__   TYPE_5__ ;
typedef  struct TYPE_51__   TYPE_4__ ;
typedef  struct TYPE_50__   TYPE_3__ ;
typedef  struct TYPE_49__   TYPE_2__ ;
typedef  struct TYPE_48__   TYPE_20__ ;
typedef  struct TYPE_47__   TYPE_1__ ;
typedef  struct TYPE_46__   TYPE_19__ ;
typedef  struct TYPE_45__   TYPE_18__ ;
typedef  struct TYPE_44__   TYPE_17__ ;
typedef  struct TYPE_43__   TYPE_16__ ;
typedef  struct TYPE_42__   TYPE_15__ ;
typedef  struct TYPE_41__   TYPE_14__ ;
typedef  struct TYPE_40__   TYPE_13__ ;
typedef  struct TYPE_39__   TYPE_12__ ;
typedef  struct TYPE_38__   TYPE_11__ ;
typedef  struct TYPE_37__   TYPE_10__ ;

/* Type definitions */
struct TYPE_40__ {TYPE_14__* p_sys; } ;
typedef  TYPE_13__ picture_t ;
struct TYPE_41__ {int /*<<< orphan*/  surface; } ;
typedef  TYPE_14__ picture_sys_d3d9_t ;
struct TYPE_42__ {TYPE_16__* p_sys; } ;
typedef  TYPE_15__ filter_t ;
struct TYPE_39__ {int /*<<< orphan*/  dev; } ;
struct TYPE_56__ {int /*<<< orphan*/  level; } ;
struct TYPE_53__ {int /*<<< orphan*/  level; } ;
struct TYPE_51__ {int /*<<< orphan*/  level; } ;
struct TYPE_49__ {int /*<<< orphan*/  level; } ;
struct TYPE_43__ {int /*<<< orphan*/  hw_surface; TYPE_12__ d3d_dev; int /*<<< orphan*/  processor; TYPE_9__ Saturation; TYPE_6__ Hue; TYPE_4__ Contrast; TYPE_2__ Brightness; } ;
typedef  TYPE_16__ filter_sys_t ;
struct TYPE_54__ {void* ll; } ;
struct TYPE_52__ {void* ll; } ;
struct TYPE_50__ {void* ll; } ;
struct TYPE_47__ {void* ll; } ;
struct TYPE_55__ {TYPE_7__ Saturation; TYPE_5__ Hue; TYPE_3__ Contrast; TYPE_1__ Brightness; } ;
struct TYPE_48__ {int /*<<< orphan*/  Width; int /*<<< orphan*/  Height; } ;
struct TYPE_38__ {int Alpha; } ;
struct TYPE_37__ {int /*<<< orphan*/  SampleFormat; } ;
struct TYPE_44__ {void* right; void* bottom; scalar_t__ left; scalar_t__ top; } ;
struct TYPE_46__ {TYPE_11__ BackgroundColor; TYPE_10__ DestFormat; int /*<<< orphan*/  Alpha; scalar_t__ DestData; TYPE_17__ TargetRect; scalar_t__ TargetFrame; TYPE_8__ ProcAmpValues; int /*<<< orphan*/  member_0; } ;
struct TYPE_45__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_17__ RECT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_18__ DXVA2_VideoSample ;
typedef  TYPE_19__ DXVA2_VideoProcessBltParams ;
typedef  TYPE_20__ D3DSURFACE_DESC ;

/* Variables and functions */
 TYPE_14__* FUNC0 (TYPE_13__*) ; 
 int /*<<< orphan*/  D3DTEXF_NONE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DXVA2_SampleProgressiveFrame ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_18__*,TYPE_13__*,TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_19__*,TYPE_18__*,int,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_13__* FUNC9 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_13__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_13__*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static picture_t *FUNC13(filter_t *p_filter, picture_t *p_pic)
{
    filter_sys_t *p_sys = p_filter->p_sys;

    picture_sys_d3d9_t *p_src_sys = FUNC0(p_pic);

    picture_t *p_outpic = FUNC9( p_filter );
    if( !p_outpic )
        goto failed;

    picture_sys_d3d9_t *p_out_sys = p_outpic->p_sys;
    if( !p_out_sys || !p_out_sys->surface )
        goto failed;

    FUNC10( p_outpic, p_pic );

    RECT area;
    D3DSURFACE_DESC srcDesc, dstDesc;
    HRESULT hr;

    hr = FUNC5( p_src_sys->surface, &srcDesc );
    if (FUNC12(FUNC2(hr)))
        goto failed;
    hr = FUNC5( p_sys->hw_surface, &dstDesc );
    if (FUNC12(FUNC2(hr)))
        goto failed;

    area.top = area.left = 0;
    area.bottom = FUNC7(srcDesc.Height, dstDesc.Height);
    area.right  = FUNC7(srcDesc.Width,  dstDesc.Width);

    DXVA2_VideoProcessBltParams params = {0};
    DXVA2_VideoSample sample = {0};
    FUNC3( &sample, p_pic, &area );

    params.ProcAmpValues.Brightness.ll = FUNC8( &p_sys->Brightness.level );
    params.ProcAmpValues.Contrast.ll   = FUNC8( &p_sys->Contrast.level );
    params.ProcAmpValues.Hue.ll        = FUNC8( &p_sys->Hue.level );
    params.ProcAmpValues.Saturation.ll = FUNC8( &p_sys->Saturation.level );
    params.TargetFrame = 0;
    params.TargetRect  = area;
    params.DestData    = 0;
    params.Alpha       = FUNC1();
    params.DestFormat.SampleFormat = DXVA2_SampleProgressiveFrame;
    params.BackgroundColor.Alpha = 0xFFFF;

    hr = FUNC6( p_sys->processor,
                                                 p_sys->hw_surface,
                                                 &params,
                                                 &sample,
                                                 1, NULL );
    hr = FUNC4( p_sys->d3d_dev.dev,
                                       p_sys->hw_surface, NULL,
                                       p_out_sys->surface, NULL,
                                       D3DTEXF_NONE);
    if (FUNC2(hr))
        goto failed;

    FUNC11( p_pic );
    return p_outpic;
failed:
    FUNC11( p_pic );
    return NULL;
}