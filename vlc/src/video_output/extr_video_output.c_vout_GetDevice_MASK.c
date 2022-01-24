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
struct TYPE_3__ {int /*<<< orphan*/  vout; int /*<<< orphan*/ * fmt; } ;
typedef  TYPE_1__ vout_device_configuration_t ;
typedef  int /*<<< orphan*/  vlc_decoder_device ;
typedef  int /*<<< orphan*/  video_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

vlc_decoder_device *FUNC5(const vout_device_configuration_t *cfg)
{
    vlc_decoder_device *dec_device = NULL;

    FUNC2(cfg->fmt != NULL);

    if (!FUNC0(cfg->fmt))
        return NULL;

    video_format_t original;
    FUNC1(&original, cfg->fmt);

    int res = FUNC4(cfg->vout, &original, &dec_device);
    FUNC3(&original);
    if (res != 0)
        return NULL;
    return dec_device;
}