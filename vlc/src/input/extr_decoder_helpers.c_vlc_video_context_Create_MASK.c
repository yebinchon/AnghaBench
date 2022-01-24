#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int private_type; size_t private_size; struct vlc_video_context_operations const* ops; int /*<<< orphan*/ * device; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ vlc_video_context ;
typedef  int /*<<< orphan*/  vlc_decoder_device ;
struct vlc_video_context_operations {int dummy; } ;
typedef  enum vlc_video_context_type { ____Placeholder_vlc_video_context_type } vlc_video_context_type ;

/* Variables and functions */
 int VLC_VIDEO_CONTEXT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

vlc_video_context * FUNC5(vlc_decoder_device *device,
                                          enum vlc_video_context_type private_type,
                                          size_t private_size,
                                          const struct vlc_video_context_operations *ops)
{
    FUNC0(private_type != VLC_VIDEO_CONTEXT_NONE); // use a NULL video context for that
    vlc_video_context *vctx = FUNC1(sizeof(*vctx) + private_size);
    if (FUNC2(vctx == NULL))
        return NULL;
    FUNC3( &vctx->rc );
    vctx->private_type = private_type;
    vctx->private_size = private_size;
    vctx->device = device;
    if (vctx->device)
        FUNC4( vctx->device );
    vctx->ops = ops;
    return vctx;
}