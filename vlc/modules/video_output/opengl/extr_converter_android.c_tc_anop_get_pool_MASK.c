#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  awh; } ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_11__ {int b_vd_ref; int i_index; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_jsurface; int /*<<< orphan*/  p_surface; } ;
struct TYPE_12__ {TYPE_1__ hw; } ;
typedef  TYPE_2__ picture_sys_t ;
struct TYPE_13__ {int /*<<< orphan*/  pf_destroy; TYPE_2__* p_sys; } ;
typedef  TYPE_3__ picture_resource_t ;
typedef  int /*<<< orphan*/  picture_pool_t ;
struct TYPE_14__ {unsigned int picture_count; int /*<<< orphan*/  unlock; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** picture; } ;
typedef  TYPE_4__ picture_pool_configuration_t ;
struct TYPE_15__ {int /*<<< orphan*/  fmt; struct priv* priv; } ;
typedef  TYPE_5__ opengl_tex_converter_t ;

/* Variables and functions */
 int /*<<< orphan*/  AndroidOpaquePicture_DetachVout ; 
 int FORCED_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  pool_lock_pic ; 
 int /*<<< orphan*/  pool_unlock_pic ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static picture_pool_t *
FUNC9(const opengl_tex_converter_t *tc, unsigned requested_count)
{
    struct priv *priv = tc->priv;
#define FORCED_COUNT 31
    requested_count = FORCED_COUNT;
    picture_t *picture[FORCED_COUNT] = {NULL, };
    unsigned count;

    for (count = 0; count < requested_count; count++)
    {
        picture_sys_t *p_picsys = FUNC2(1, sizeof(*p_picsys));
        if (FUNC7(p_picsys == NULL))
            goto error;
        picture_resource_t rsc = {
            .p_sys = p_picsys,
            .pf_destroy = AndroidOpaquePicture_DetachVout,
        };

        p_picsys->hw.b_vd_ref = true;
        p_picsys->hw.p_surface = FUNC0(priv->awh);
        p_picsys->hw.p_jsurface = FUNC1(priv->awh);
        p_picsys->hw.i_index = -1;
        FUNC8(&p_picsys->hw.lock);

        picture[count] = FUNC4(&tc->fmt, &rsc);
        if (!picture[count])
        {
            FUNC3(p_picsys);
            goto error;
        }
    }

    /* Wrap the pictures into a pool */
    picture_pool_configuration_t pool_cfg = {
        .picture_count = requested_count,
        .picture       = picture,
        .lock          = pool_lock_pic,
        .unlock        = pool_unlock_pic,
    };
    picture_pool_t *pool = FUNC6(&pool_cfg);
    if (!pool)
        goto error;

    return pool;
error:
    for (unsigned i = 0; i < count; i++)
        FUNC5(picture[i]);
    return NULL;
}