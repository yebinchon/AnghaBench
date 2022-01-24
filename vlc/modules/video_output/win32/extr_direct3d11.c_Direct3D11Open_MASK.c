#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_20__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {scalar_t__ i_chroma; } ;
struct TYPE_21__ {scalar_t__ force; } ;
struct TYPE_26__ {TYPE_9__ source; TYPE_1__ obj; TYPE_6__* sys; } ;
typedef  TYPE_5__ vout_display_t ;
struct TYPE_24__ {int i_width; int i_height; } ;
struct TYPE_22__ {TYPE_3__ texture_source; } ;
struct TYPE_25__ {int i_width; int i_height; TYPE_2__* textureFormat; } ;
struct TYPE_27__ {scalar_t__ swapCb; int /*<<< orphan*/  outside_opaque; int /*<<< orphan*/  sys; TYPE_20__ area; TYPE_4__ picQuad; int /*<<< orphan*/  legacy_shader; } ;
typedef  TYPE_6__ vout_display_sys_t ;
typedef  scalar_t__ vlc_fourcc_t ;
struct TYPE_28__ {scalar_t__ i_chroma; int i_width; int i_height; } ;
typedef  TYPE_7__ video_format_t ;
struct TYPE_23__ {scalar_t__ formatTexture; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_20__*,int /*<<< orphan*/ *) ; 
 scalar_t__ DXGI_FORMAT_B5G6R5_UNORM ; 
 scalar_t__ DXGI_FORMAT_R8G8B8A8_UNORM ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ LocalSwapchainSwap ; 
 int FUNC3 (TYPE_5__*,TYPE_7__*) ; 
 int FUNC4 (TYPE_5__*,TYPE_7__*) ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,TYPE_9__*) ; 
 scalar_t__* FUNC10 (scalar_t__) ; 
 scalar_t__* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(vout_display_t *vd, video_format_t *fmtp)
{
    vout_display_sys_t *sys = vd->sys;
    video_format_t fmt;
    FUNC9(&fmt, &vd->source);
    int err = FUNC4(vd, &fmt);
    if (err != VLC_SUCCESS)
    {
        if (!FUNC6(vd->source.i_chroma)
#if !VLC_WINSTORE_APP
            && vd->obj.force
#endif
                )
        {
            const vlc_fourcc_t *list = FUNC12(vd->source.i_chroma) ?
                        FUNC11(vd->source.i_chroma) :
                        FUNC10(vd->source.i_chroma);
            for (unsigned i = 0; list[i] != 0; i++) {
                fmt.i_chroma = list[i];
                if (fmt.i_chroma == vd->source.i_chroma)
                    continue;
                err = FUNC4(vd, &fmt);
                if (err == VLC_SUCCESS)
                    break;
            }
        }
        if (err != VLC_SUCCESS)
        {
            if ( sys->swapCb == LocalSwapchainSwap )
                FUNC2( sys->outside_opaque );
            return err;
        }
    }

    /* adjust the decoder sizes to have proper padding */
    sys->picQuad.i_width  = fmt.i_width;
    sys->picQuad.i_height = fmt.i_height;
    if (!sys->legacy_shader && FUNC6(fmt.i_chroma))
    {
        sys->picQuad.i_width  = (sys->picQuad.i_width  + 0x7F) & ~0x7F;
        sys->picQuad.i_height = (sys->picQuad.i_height + 0x7F) & ~0x7F;
    }
    else
    if ( sys->picQuad.textureFormat->formatTexture != DXGI_FORMAT_R8G8B8A8_UNORM &&
         sys->picQuad.textureFormat->formatTexture != DXGI_FORMAT_B5G6R5_UNORM )
    {
        sys->picQuad.i_width  = (sys->picQuad.i_width  + 0x01) & ~0x01;
        sys->picQuad.i_height = (sys->picQuad.i_height + 0x01) & ~0x01;
    }

    sys->area.texture_source.i_width  = sys->picQuad.i_width;
    sys->area.texture_source.i_height = sys->picQuad.i_height;

    FUNC0(FUNC5(vd), &sys->area, &sys->sys);

    err = FUNC3(vd, &fmt);
    if (err != VLC_SUCCESS) {
        FUNC7(vd, "Could not update the backbuffer");
        return err;
    }

    if (FUNC1(vd)) {
        FUNC7(vd, "Failed to allocate resources");
        if ( sys->swapCb == LocalSwapchainSwap )
            FUNC2( sys->outside_opaque );
        return VLC_EGENERIC;
    }

    FUNC8(fmtp);
    *fmtp = fmt;

    return VLC_SUCCESS;
}