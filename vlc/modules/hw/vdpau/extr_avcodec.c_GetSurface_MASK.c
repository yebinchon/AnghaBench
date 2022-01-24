#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* frame; } ;
typedef  TYPE_2__ vlc_vdp_video_field_t ;
struct TYPE_10__ {int /*<<< orphan*/  vctx; } ;
typedef  TYPE_3__ vlc_va_sys_t ;
struct video_context_private {TYPE_2__** pool; } ;
struct TYPE_8__ {int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 struct video_context_private* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,uintptr_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static vlc_vdp_video_field_t *FUNC4(vlc_va_sys_t *sys)
{
    vlc_vdp_video_field_t *f;
    struct video_context_private *vctx_priv = FUNC0(sys->vctx);

    for (unsigned i = 0; (f = vctx_priv->pool[i]) != NULL; i++)
    {
        uintptr_t expected = 1;

        if (FUNC1(&f->frame->refs, &expected, 2))
        {
            vlc_vdp_video_field_t *field = FUNC3(f);
            FUNC2(&f->frame->refs, 1);
            return field;
        }
    }
    return NULL;
}