#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ i_visible_height; scalar_t__ i_visible_width; scalar_t__ i_y_offset; scalar_t__ i_x_offset; } ;
typedef  TYPE_3__ video_format_t ;
struct TYPE_12__ {int Default; } ;
struct filter_level {TYPE_1__ Range; int /*<<< orphan*/  level; } ;
struct TYPE_13__ {int /*<<< orphan*/  videoProcessor; int /*<<< orphan*/  d3dvidctx; } ;
struct TYPE_15__ {TYPE_2__ d3d_proc; } ;
typedef  TYPE_4__ filter_sys_t ;
struct TYPE_17__ {int /*<<< orphan*/ * pInputSurface; int /*<<< orphan*/  Enable; int /*<<< orphan*/  member_0; } ;
struct TYPE_16__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_5__ RECT ;
typedef  int /*<<< orphan*/  ID3D11VideoProcessorOutputView ;
typedef  int /*<<< orphan*/  ID3D11VideoProcessorInputView ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_6__ D3D11_VIDEO_PROCESSOR_STREAM ;
typedef  int /*<<< orphan*/  D3D11_VIDEO_PROCESSOR_FILTER ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7( filter_sys_t *p_sys,
                         D3D11_VIDEO_PROCESSOR_FILTER filter,
                         struct filter_level *p_level,
                         ID3D11VideoProcessorInputView *input,
                         ID3D11VideoProcessorOutputView *output,
                         const video_format_t *fmt)
{
    HRESULT hr;

    int level = FUNC6(&p_level->level);
    if (level == p_level->Range.Default)
        return false;

    FUNC3(p_sys->d3d_proc.d3dvidctx,
                                                     p_sys->d3d_proc.videoProcessor,
                                                     0,
                                                     filter,
                                                     TRUE,
                                                     level);
    FUNC1(p_sys->d3d_proc.d3dvidctx,
                                                                 p_sys->d3d_proc.videoProcessor,
                                                                 0, FALSE);

    RECT srcRect;
    srcRect.left   = fmt->i_x_offset;
    srcRect.top    = fmt->i_y_offset;
    srcRect.right  = srcRect.left + fmt->i_visible_width;
    srcRect.bottom = srcRect.top  + fmt->i_visible_height;
    FUNC4(p_sys->d3d_proc.d3dvidctx, p_sys->d3d_proc.videoProcessor,
                                                         0, TRUE, &srcRect);
    FUNC2(p_sys->d3d_proc.d3dvidctx, p_sys->d3d_proc.videoProcessor,
                                                       0, TRUE, &srcRect);

    D3D11_VIDEO_PROCESSOR_STREAM stream = {0};
    stream.Enable = TRUE;
    stream.pInputSurface = input;

    hr = FUNC0(p_sys->d3d_proc.d3dvidctx,
                                              p_sys->d3d_proc.videoProcessor,
                                              output,
                                              0, 1, &stream);
    return FUNC5(hr);
}