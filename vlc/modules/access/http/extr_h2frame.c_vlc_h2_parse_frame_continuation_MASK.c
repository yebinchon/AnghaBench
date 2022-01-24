#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_fast32_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {scalar_t__ sid; } ;
struct vlc_h2_parser {TYPE_1__ headers; } ;
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 int VLC_H2_CONTINUATION_END_HEADERS ; 
 int /*<<< orphan*/  VLC_H2_FRAME_SIZE_ERROR ; 
 size_t VLC_H2_MAX_FRAME ; 
 int /*<<< orphan*/  VLC_H2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_frame*) ; 
 int FUNC1 (struct vlc_h2_frame*) ; 
 int /*<<< orphan*/ * FUNC2 (struct vlc_h2_frame*) ; 
 int FUNC3 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vlc_h2_parser*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC5 (struct vlc_h2_parser*) ; 

__attribute__((used)) static int FUNC6(struct vlc_h2_parser *p,
                                           struct vlc_h2_frame *f, size_t len,
                                           uint_fast32_t id)
{
    const uint8_t *ptr = FUNC2(f);

    /* Stream ID must match with the previous frame. */
    if (id == 0 || id != p->headers.sid)
    {
        FUNC0(f);
        return FUNC3(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len > VLC_H2_MAX_FRAME)
    {
        FUNC0(f);
        return FUNC3(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    int ret = FUNC4(p, ptr, len);

    if (ret == 0 && (FUNC1(f) & VLC_H2_CONTINUATION_END_HEADERS))
        ret = FUNC5(p);

    FUNC0(f);
    return 0;
}