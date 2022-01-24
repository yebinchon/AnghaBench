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
typedef  int /*<<< orphan*/  uint_fast32_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_H2_FRAME_GOAWAY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct vlc_h2_frame* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct vlc_h2_frame*) ; 

struct vlc_h2_frame *
FUNC4(uint_fast32_t last_stream_id, uint_fast32_t error_code)
{
    struct vlc_h2_frame *f = FUNC2(VLC_H2_FRAME_GOAWAY, 0, 0, 8);
    if (FUNC1(f != NULL))
    {
        uint8_t *p = FUNC3(f);

        FUNC0(p, last_stream_id);
        FUNC0(p + 4, error_code);
    }
    return f;
}