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
typedef  int uint_fast32_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  VLC_H2_FRAME_WINDOW_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct vlc_h2_frame* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct vlc_h2_frame*) ; 

struct vlc_h2_frame *
FUNC5(uint_fast32_t stream_id, uint_fast32_t credit)
{
    FUNC1((stream_id >> 31) == 0);

    struct vlc_h2_frame *f = FUNC3(VLC_H2_FRAME_WINDOW_UPDATE,
                                                0, stream_id, 4);
    if (FUNC2(f != NULL))
    {
        uint8_t *p = FUNC4(f);

        FUNC0(p, credit);
    }
    return f;
}