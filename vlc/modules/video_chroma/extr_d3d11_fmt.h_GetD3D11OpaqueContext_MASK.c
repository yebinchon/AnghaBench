#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_video_context ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/ * opaque; } ;
typedef  TYPE_1__ vlc_decoder_device ;
typedef  int /*<<< orphan*/  d3d11_decoder_device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ VLC_DECODER_DEVICE_D3D11VA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline d3d11_decoder_device_t *FUNC5(vlc_video_context *vctx)
{
    vlc_decoder_device *device = vctx ? FUNC4(vctx) : NULL;
    if (FUNC2(device == NULL))
        return NULL;
    d3d11_decoder_device_t *res = NULL;
    if (device->type == VLC_DECODER_DEVICE_D3D11VA)
    {
        FUNC1(device->opaque != NULL);
        res = FUNC0(device);
    }
    FUNC3(device);
    return res;
}