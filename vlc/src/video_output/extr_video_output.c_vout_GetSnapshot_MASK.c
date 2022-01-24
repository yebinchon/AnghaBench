#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  scalar_t__ vlc_fourcc_t ;
typedef  int /*<<< orphan*/  video_format_t ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_7__ {int /*<<< orphan*/  snapshot; int /*<<< orphan*/  dummy; } ;

/* Variables and functions */
 scalar_t__ VLC_CODEC_PNG ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int const,int const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(vout_thread_t *vout,
                     block_t **image_dst, picture_t **picture_dst,
                     video_format_t *fmt,
                     const char *type, vlc_tick_t timeout)
{
    FUNC1(!vout->p->dummy);
    picture_t *picture = FUNC7(vout->p->snapshot, timeout);
    if (!picture) {
        FUNC3(vout, "Failed to grab a snapshot");
        return VLC_EGENERIC;
    }

    if (image_dst) {
        vlc_fourcc_t codec = VLC_CODEC_PNG;
        if (type && FUNC2(type))
            codec = FUNC2(type);

        const int override_width  = FUNC6(vout, "snapshot-width");
        const int override_height = FUNC6(vout, "snapshot-height");

        if (FUNC4(FUNC0(vout), image_dst, fmt,
                           picture, codec, override_width, override_height, false)) {
            FUNC3(vout, "Failed to convert image for snapshot");
            FUNC5(picture);
            return VLC_EGENERIC;
        }
    }
    if (picture_dst)
        *picture_dst = picture;
    else
        FUNC5(picture);
    return VLC_SUCCESS;
}