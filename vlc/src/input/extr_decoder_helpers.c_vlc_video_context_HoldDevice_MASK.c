#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ vlc_video_context ;
typedef  int /*<<< orphan*/  vlc_decoder_device ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

vlc_decoder_device* FUNC1(vlc_video_context *vctx)
{
    if (!vctx->device)
        return NULL;
    return FUNC0( vctx->device );
}