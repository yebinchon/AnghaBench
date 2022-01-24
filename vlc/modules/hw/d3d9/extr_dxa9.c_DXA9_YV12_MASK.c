#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_20__ {scalar_t__ i_chroma; scalar_t__ i_visible_height; scalar_t__ i_y_offset; int /*<<< orphan*/  i_height; } ;
struct TYPE_21__ {TYPE_1__ format; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_22__ {int /*<<< orphan*/  surface; } ;
typedef  TYPE_3__ picture_sys_d3d9_t ;
struct TYPE_23__ {scalar_t__ p_sys; } ;
typedef  TYPE_4__ filter_t ;
typedef  int /*<<< orphan*/  copy_cache_t ;
struct TYPE_25__ {int Pitch; int /*<<< orphan*/  const* pBits; } ;
struct TYPE_24__ {scalar_t__ Format; size_t const Height; } ;
typedef  TYPE_5__ D3DSURFACE_DESC ;
typedef  TYPE_6__ D3DLOCKED_RECT ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/  const**,size_t const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/  const**,size_t const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const**,size_t const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char,char,char,char) ; 
 scalar_t__ VLC_CODEC_I420 ; 
 scalar_t__ VLC_CODEC_I420_10L ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC10(filter_t *p_filter, picture_t *src, picture_t *dst)
{
    copy_cache_t *p_copy_cache = (copy_cache_t*) p_filter->p_sys;
    picture_sys_d3d9_t *p_sys = FUNC0(src);

    D3DSURFACE_DESC desc;
    D3DLOCKED_RECT lock;
    if (!FUNC4(p_filter, p_sys->surface, &lock, &desc))
        return;

    if (desc.Format == FUNC6('Y','V','1','2') ||
        desc.Format == FUNC6('I','M','C','3')) {

        if (dst->format.i_chroma == VLC_CODEC_I420)
            FUNC9( dst );

        bool imc3 = desc.Format == FUNC6('I','M','C','3');
        size_t chroma_pitch = imc3 ? lock.Pitch : (lock.Pitch / 2);

        const size_t pitch[3] = {
            lock.Pitch,
            chroma_pitch,
            chroma_pitch,
        };

        const uint8_t *plane[3] = {
            (uint8_t*)lock.pBits,
            (uint8_t*)lock.pBits + pitch[0] * desc.Height,
            (uint8_t*)lock.pBits + pitch[0] * desc.Height
                                 + pitch[1] * desc.Height / 2,
        };

        if (imc3) {
            const uint8_t *V = plane[1];
            plane[1] = plane[2];
            plane[2] = V;
        }
        FUNC2(dst, plane, pitch, src->format.i_height, p_copy_cache);

        if (dst->format.i_chroma == VLC_CODEC_I420)
            FUNC9( dst );
    } else if (desc.Format == FUNC6('N','V','1','2')
            || desc.Format == FUNC6('P','0','1','0')) {
        const uint8_t *plane[2] = {
            lock.pBits,
            (uint8_t*)lock.pBits + lock.Pitch * desc.Height
        };
        const size_t  pitch[2] = {
            lock.Pitch,
            lock.Pitch,
        };
        if (desc.Format == FUNC6('N','V','1','2'))
            FUNC3(dst, plane, pitch,
                            FUNC7(desc.Height, src->format.i_y_offset + src->format.i_visible_height),
                            p_copy_cache);
        else
            FUNC1(dst, plane, pitch,
                              FUNC7(desc.Height, src->format.i_y_offset + src->format.i_visible_height),
                              6, p_copy_cache);

        if (dst->format.i_chroma != VLC_CODEC_I420 && dst->format.i_chroma != VLC_CODEC_I420_10L)
            FUNC9(dst);
    } else {
        FUNC8(p_filter, "Unsupported DXA9 conversion from 0x%08X to YV12", desc.Format);
    }

    /* */
    FUNC5(p_sys->surface);
}