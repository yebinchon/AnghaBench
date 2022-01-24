#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct hxxx_helper_nal {int /*<<< orphan*/  h264_sps; } ;
struct hxxx_helper {int dummy; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 struct hxxx_helper_nal* FUNC1 (struct hxxx_helper const*) ; 

int
FUNC2(const struct hxxx_helper *hh,
                                   uint8_t *p_depth, unsigned *p_delay)
{
    const struct hxxx_helper_nal *hsps = FUNC1(hh);
    if (hsps == NULL)
        return VLC_EGENERIC;
    return FUNC0(hsps->h264_sps, p_depth, p_delay) ?
           VLC_SUCCESS : VLC_EGENERIC;
}