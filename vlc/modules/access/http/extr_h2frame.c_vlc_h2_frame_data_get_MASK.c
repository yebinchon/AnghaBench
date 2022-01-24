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
typedef  int uint_fast8_t ;
typedef  unsigned int uint8_t ;
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 int VLC_H2_DATA_PADDED ; 
 scalar_t__ VLC_H2_FRAME_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct vlc_h2_frame const*) ; 
 size_t FUNC2 (struct vlc_h2_frame const*) ; 
 unsigned int* FUNC3 (struct vlc_h2_frame const*) ; 
 scalar_t__ FUNC4 (struct vlc_h2_frame const*) ; 

const uint8_t *(FUNC5)(const struct vlc_h2_frame *f,
                                       size_t *restrict lenp)
{
    FUNC0(FUNC4(f) == VLC_H2_FRAME_DATA);

    size_t len = FUNC2(f);
    uint_fast8_t flags = FUNC1(f);
    const uint8_t *ptr = FUNC3(f);

    /* At this point, the frame has already been validated by the parser. */
    if (flags & VLC_H2_DATA_PADDED)
    {
        FUNC0(len >= 1u && len >= 1u + ptr[0]);
        len -= 1u + *(ptr++);
    }

    *lenp = len;
    return ptr;
}