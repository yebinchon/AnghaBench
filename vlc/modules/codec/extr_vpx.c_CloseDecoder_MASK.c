#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vpx_image {TYPE_2__* user_priv; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_5__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vpx_image* FUNC2 (int /*<<< orphan*/ *,void const**) ; 

__attribute__((used)) static void FUNC3(vlc_object_t *p_this)
{
    decoder_t *dec = (decoder_t *)p_this;
    decoder_sys_t *sys = dec->p_sys;

    /* Free our PTS */
    const void *iter = NULL;
    for (;;) {
        struct vpx_image *img = FUNC2(&sys->ctx, &iter);
        if (!img)
            break;
        FUNC0(img->user_priv);
    }

    FUNC1(&sys->ctx);

    FUNC0(sys);
}