#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_17__ {scalar_t__ i_visible_height; scalar_t__ i_y_offset; } ;
struct TYPE_18__ {TYPE_1__ format; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_19__ {int /*<<< orphan*/  surface; } ;
typedef  TYPE_3__ picture_sys_d3d9_t ;
struct TYPE_20__ {scalar_t__ p_sys; } ;
typedef  TYPE_4__ filter_t ;
typedef  int /*<<< orphan*/  copy_cache_t ;
struct TYPE_22__ {int Pitch; int /*<<< orphan*/  const* pBits; } ;
struct TYPE_21__ {scalar_t__ Format; int Height; } ;
typedef  TYPE_5__ D3DSURFACE_DESC ;
typedef  TYPE_6__ D3DLOCKED_RECT ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(filter_t *p_filter, picture_t *src, picture_t *dst)
{
    copy_cache_t *p_copy_cache = (copy_cache_t*) p_filter->p_sys;
    picture_sys_d3d9_t *p_sys = FUNC0(src);

    D3DSURFACE_DESC desc;
    D3DLOCKED_RECT lock;
    if (!FUNC2(p_filter, p_sys->surface, &lock, &desc))
        return;

    if (desc.Format == FUNC4('N','V','1','2')
     || desc.Format == FUNC4('P','0','1','0')) {
        const uint8_t *plane[2] = {
            lock.pBits,
            (uint8_t*)lock.pBits + lock.Pitch * desc.Height
        };
        size_t  pitch[2] = {
            lock.Pitch,
            lock.Pitch,
        };
        FUNC1(dst, plane, pitch,
                         FUNC5(desc.Height, src->format.i_y_offset + src->format.i_visible_height),
                         p_copy_cache);
    } else {
        FUNC6(p_filter, "Unsupported DXA9 conversion from 0x%08X to NV12", desc.Format);
    }

    /* */
    FUNC3(p_sys->surface);
}